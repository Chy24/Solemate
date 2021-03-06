class User < ApplicationRecord
  mount_uploaders :images, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true 
  validates :last_name, presence: true 
  validates :first_name, presence: true 
  validates :dob, presence: true 
  has_many :comments
  has_many :posts

end
