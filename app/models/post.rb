class Post < ApplicationRecord
  belongs_to :user

  mount_uploaders :images, ImageUploader

  def self.search(search)
    where("title ILIKE ? OR brand ILIKE ? OR color ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
  end

end
