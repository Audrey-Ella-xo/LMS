class AddPersonalToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :title, :string
    add_column :profiles, :marital_status, :string
    add_column :profiles, :gender, :string
    add_column :profiles, :phone, :string
    add_column :profiles, :nationality, :string
  end
end
