class CreatePolicyholders < ActiveRecord::Migration[7.0]
  def change
    create_table :policyholders do |t|
      t.string :name
      t.date :birthdate
      t.string :email
      t.string :phone
      t.text :street
      t.text :city
      t.string :zip

      t.timestamps
    end
  end
end
