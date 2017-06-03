class FixImageToPhoto < ActiveRecord::Migration[5.0]
  def change
    rename_column :photos, :image, :avatar
  end
end
