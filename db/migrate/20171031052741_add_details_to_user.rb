class AddDetailsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :dob, :date
    add_column :users, :bio, :text
    add_column :users, :location, :string
    add_column :users, :rating, :integer
  end
end
