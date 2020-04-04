class Cafepost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 5 }
  mount_uploader :image, ImageUploader
end
