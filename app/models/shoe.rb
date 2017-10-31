class Shoe < ApplicationRecord
  has_many :images

  mount_uploaders :images, ImageUploader
end
