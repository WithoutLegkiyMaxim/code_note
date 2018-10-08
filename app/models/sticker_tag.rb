class StickerTag < ApplicationRecord
  belongs_to :sticker 
  belongs_to :tag
  validates :sticker_id,
            presence: true
  validates :tag_id,
            presence: true
end
