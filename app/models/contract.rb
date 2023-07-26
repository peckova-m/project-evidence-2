class Contract < ApplicationRecord
  belongs_to :policy
  delegate :title, to: :policy, prefix: true, allow_nil: true
  belongs_to :policyholder
  delegate :name, :birthdate, to: :policyholder, prefix: true, allow_nil:true
  validates :monthly_amount, :numericality => { :greater_than => 0 }

  after_save :update_monthly_revenue
  after_save :update_most_valuable_costumer
  after_update :update_monthly_revenue
  after_update :update_most_valuable_costumer
  after_destroy :update_monthly_revenue
  after_destroy :update_most_valuable_costumer

  private

  def update_monthly_revenue
    policy.update(monthly_revenue: Contract.sum(:monthly_amount))
  end

  def update_most_valuable_costumer
    policy.update(most_valuable_costumer: Contract.order('monthly_amount DESC').first.policyholder_name)
  end
end
