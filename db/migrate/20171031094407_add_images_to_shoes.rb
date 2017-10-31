class AddImagesToShoes < ActiveRecord::Migration[5.1]
  def change
    add_column :shoes, :images, :string, array: true, default: []
  end
end
