class Policy < ApplicationRecord
	has_many :contracts, dependent: :destroy
	has_many :policyholders, through: :contracts, dependent: :destroy
	validates :title, uniqueness: true

	def monthly_revenue
		contracts.sum(:monthly_amount)
	end

	def most_valuable_costumer
		contracts.order('monthly_amount DESC').first&.policyholder_name
	end
end
