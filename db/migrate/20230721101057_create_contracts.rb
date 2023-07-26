class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.belongs_to :policy, null: false, foreign_key: true
      t.belongs_to :policyholder, null: false, foreign_key: true
      t.integer :monthly_amount

      t.timestamps
    end
  end
end
