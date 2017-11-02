class AddImagesToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :images, :string, array: true, default: []
  end
end
