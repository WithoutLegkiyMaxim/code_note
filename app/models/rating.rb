class Rating < ApplicationRecord
  belongs_to :sticker
  belongs_to :user
  
  ##
  # this scope get all stickers when them id in given list
  # and them rating (summary of marks)
  scope :and_stickers_for_ids, ->(stickers) {
    joins(:sticker)
    .select("stickers.*","sum(mark) as rating")
    .where("sticker_id in (#{stickers.join(',')})")
    .group('stickers.id')
  }

  ##
  #

end
