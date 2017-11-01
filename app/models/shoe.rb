class Shoe < ApplicationRecord
  has_many :images 
  has_many :comments

  mount_uploaders :images, ImageUploader
end
