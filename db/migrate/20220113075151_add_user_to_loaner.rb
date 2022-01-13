class AddUserToLoaner < ActiveRecord::Migration[6.1]
  def change
    add_reference :loaners, :user, null: false, foreign_key: true
    add_column :loaners, :amt_words, :string
    add_column :loaners, :purpose, :string
    add_column :loaners, :start_date, :date
    add_column :loaners, :end_date, :date
    add_column :loaners, :pay_mode, :string
    add_column :loaners, :rate, :string
    add_column :loaners, :amt_owed, :integer
    add_column :loaners, :bank_name, :string

  end
end
