class AddSizeAndColorAndTypeToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :size, :float
    add_column :posts, :color, :text
    add_column :posts, :category, :text
  end
end
