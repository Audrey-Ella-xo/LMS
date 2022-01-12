class AddIdentifierToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :identification, :string
  end
end
