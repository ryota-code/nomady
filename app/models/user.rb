class User < ApplicationRecord
  has_many :cafeposts, dependent: :destroy
  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverse_of_relationships, source: :user
  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL, message: ' は正しい形式で入力してください' }
  validates :detail, presence: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 4 }
  mount_uploader :image, ImageUploader

  # お気に入り
  has_many :favorites, dependent: :destroy

  # コメント
  has_many :comments, dependent: :destroy

  def follow(other_user)
    unless self == other_user
      relationships.find_or_create_by(follow_id: other_user.id)
    end
  end

  def unfollow(other_user)
    relationship = relationships.find_by(follow_id: other_user.id)
    relationship&.destroy
  end

  def following?(other_user)
    followings.include?(other_user)
  end
end
