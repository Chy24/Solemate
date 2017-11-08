class Post < ApplicationRecord
  belongs_to :user

  mount_uploaders :images, ImageUploader

  def self.search(search)
    where("title ILIKE ? OR brand ILIKE ? OR color ILIKE ? OR category ILIKE ? OR color ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end

  # def convert
  #   ISO3166::Country.new(c.currency.code.upcase)
  # end
  # 
end
