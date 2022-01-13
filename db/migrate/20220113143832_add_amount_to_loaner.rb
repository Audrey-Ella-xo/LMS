class AddAmountToLoaner < ActiveRecord::Migration[6.1]
  def change
    # precision is the total number of digits
    # scale is the number of digits to the right of the decimal point
    add_column :loaners, :amount, :decimal, :precision => 6, :scale => 2
  end
end
