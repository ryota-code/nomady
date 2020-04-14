class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :cafepost
  counter_culture :cafepost
  validates :user_id, presence: true
  validates :cafepost_id, presence: true
end
