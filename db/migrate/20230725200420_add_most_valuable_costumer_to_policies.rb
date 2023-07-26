class AddMostValuableCostumerToPolicies < ActiveRecord::Migration[7.0]
  def change
    add_column :policies, :most_valuable_costumer, :string
  end
end
