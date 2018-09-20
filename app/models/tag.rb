class Tag < ApplicationRecord
  has_many :sticker_tags
  has_many :sticker, through: :sticker_tags
  validates :name, length: {minimum: 3, maximum: 20}
  validates :name, presence: true
  validates :name, uniqueness: true
end
