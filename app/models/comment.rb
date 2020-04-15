class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :cafepost
end
