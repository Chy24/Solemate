class Conversation < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'

  has_many :messages, dependent: :destroy
  
  validates_uniqueness_of :user1, :scope => :user2

end
