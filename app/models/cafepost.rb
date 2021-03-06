class Cafepost < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 20 }
  validates :content, presence: true, length: { maximum: 60 }
  mount_uploader :image, ImageUploader

  # お気に入り
  has_many :favorites, dependent: :destroy
  has_many :iine_users, through: :favorites, source: :user

  # Google Map
  geocoded_by :address_all
  after_validation :geocode, if: :address_all_changed?

  # コメント
  has_many :comments, dependent: :destroy

  # 検索
  def self.search(search)
    return Cafepost.all unless search

    Cafepost.where(['address_all LIKE ?', "%#{search}%"])
  end

  # タグ付け
  acts_as_taggable

  # 住所自動入力
  include JpPrefecture
  jp_prefecture :prefecture_code

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

  # いいねする
  def iine(user)
    favorites.create(user_id: user.id)
  end

  # いいねを解除する
  def uniine(user)
    favorites.find_by(user_id: user.id).destroy
  end

  # 現在のユーザーがいいねしてたらtrueを返す
  def iine?(user)
    iine_users.include?(user)
  end
end
