class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :shoes do |t|
      t.string :title
      t.string :sex
      t.text :category
      t.string :brand
      t.text :description
      t.text :color
      t.integer :rating

      t.timestamps
    end
  end
end
