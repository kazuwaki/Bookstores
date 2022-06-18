class Book < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end

end
