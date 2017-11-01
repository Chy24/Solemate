class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.text :title
      t.text :description
      t.string :image
      t.boolean :shipping
      t.text :condition
      t.float :asking_price
      t.boolean :auction

      t.timestamps
    end
  end
end
