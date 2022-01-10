class AddBankInfoToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :acc_name, :string
    add_column :profiles, :bank_name, :string
    add_column :profiles, :acc_number, :string
    add_column :profiles, :branch_name, :string
  end
end
