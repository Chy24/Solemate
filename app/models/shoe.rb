class Shoe < ApplicationRecord
  mount_uploaders :images, ImageUploader

  has_many :images 
  has_many :comments
  has_and_belongs_to_many :likers, class_name: 'User', join_table: :likes 

  
  def liked_by?(user)
    likers.exists?(user.id)
  end

  def toggle_liked_by(user) 
    if likers.exists?(user.id)
      likers.destroy(user.id)
    else
      likers << user
  end
  end

end

