class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :cafepost
  validates :user_id, presence: true
  validates :cafepost_id, presence: true
end
