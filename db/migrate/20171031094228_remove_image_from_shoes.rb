class RemoveImageFromShoes < ActiveRecord::Migration[5.1]
  def change
    remove_column :shoes, :image, :text
  end
end
