class AddImagesToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :images, :text
  end
end
