class Sticker < ApplicationRecord
  has_many :tags, through: :sticker_tags
  has_many :sticker_tags
  
  belongs_to :user
  
  has_many :ratings
  has_many :who_mark, through: :ratings, source: :users
  # has_one :counted_rating, throug: :ratings
  validates :title,
            presence: true,
            length: {maximum: 450, minimum: 5} #maximum: 100
  validates :user_id,
            presence: true
end
