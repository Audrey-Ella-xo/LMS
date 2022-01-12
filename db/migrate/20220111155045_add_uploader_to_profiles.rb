class AddUploaderToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :image, :string
    add_column :profiles, :attachment, :string
  end
end
