class CreateLoaners < ActiveRecord::Migration[6.1]
  def change
    create_table :loaners do |t|
      t.integer :duration

      t.timestamps
    end
  end
end
