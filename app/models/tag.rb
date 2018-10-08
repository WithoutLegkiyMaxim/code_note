class Tag < ApplicationRecord
  has_many :sticker_tags
  has_many :stickers, through: :sticker_tags
  validates :name, length: { maximum: 20}
  validates :name, presence: true
  # uniq 4 production
  # validates :name, uniqueness: true
end
