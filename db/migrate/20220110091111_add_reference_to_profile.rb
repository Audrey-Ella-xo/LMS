class AddReferenceToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :ref_title, :string
    add_column :profiles, :ref_gender, :string
    add_column :profiles, :ref_firstname, :string
    add_column :profiles, :ref_lastname, :string
    add_column :profiles, :ref_address, :string
    add_column :profiles, :ref_phone, :string
    add_column :profiles, :ref_email, :string
  end
end
