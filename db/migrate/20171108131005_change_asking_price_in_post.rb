class ChangeAskingPriceInPost < ActiveRecord::Migration[5.1]
  def up
    change_column :posts, :asking_price, :decimal
  end

  def down
    change_column :posts, :asking_price, :float
  end
end
