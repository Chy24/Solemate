class CreateJoinTableLikes < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :shoes, force: true, table_name: :likes do |t|
      t.index [:user_id, :shoe_id], unique: true
      t.index [:shoe_id, :user_id], unique: true

      t.timestamp :created_at
    end
  end
end
 