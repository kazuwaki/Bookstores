class Liqueur < ApplicationRecord
  has_many :posts, dependent: :destroy
end

