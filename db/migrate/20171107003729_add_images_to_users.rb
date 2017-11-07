class AddImagesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :iamges, :text
  end
end
