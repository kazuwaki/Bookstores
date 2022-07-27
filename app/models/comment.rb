class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :message, presence: true
end
