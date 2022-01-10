class AddEmploymentInfoToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :emp_phone, :string
    add_column :profiles, :emp_duration, :string
    add_column :profiles, :job_title, :string
    add_column :profiles, :other_income, :integer
  end
end
