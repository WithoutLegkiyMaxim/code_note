class StickerTag < ApplicationRecord
  validates :sticker_id,
            presence: true
  validates :tag_id,
            presence: true
end
