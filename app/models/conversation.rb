class Conversation < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'

  has_many :messages, dependent: :destroy
  
  validates_uniqueness_of :user1, :scope => :user2

  scope :between, ->(user1,user2){where("(user1_id = ? AND user2_id = ?) OR (user1_id = ? AND user2_id = ?)", user1,user2,user2,user1)}
end
