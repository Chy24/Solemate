class RenameiamgesToImagesInUsers < ActiveRecord::Migration[5.1]
  def up
    rename_column :users, :iamges, :images
  end

  def down
    rename_column :users, :images, :iamges
  end
end
