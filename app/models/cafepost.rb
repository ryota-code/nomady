class Cafepost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 5 }
  mount_uploader :image, ImageUploader
  
    # 住所自動入力
    include JpPrefecture
    jp_prefecture :prefecture_code
  
    def prefecture_name
      JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
    end
  
    def prefecture_name=(prefecture_name)
      self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
    end
end
