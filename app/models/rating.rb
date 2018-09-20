class Rating < ApplicationRecord
  belongs_to :sticker
  belongs_to :user
end
