class AddRevenueToPolicies < ActiveRecord::Migration[7.0]
  def change
    add_column :policies, :monthly_revenue, :integer
  end
end
