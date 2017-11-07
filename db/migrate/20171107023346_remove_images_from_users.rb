class RemoveImagesFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :images, :text
  end
end
