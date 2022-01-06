class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.date :DOB
      t.string :Address
      t.string :workplace_address
      t.string :workplace
      t.integer :monthly_net

      t.timestamps
    end
  end
end
