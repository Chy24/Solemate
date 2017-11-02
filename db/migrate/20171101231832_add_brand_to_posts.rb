class AddBrandToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :brand, :string
  end
end
