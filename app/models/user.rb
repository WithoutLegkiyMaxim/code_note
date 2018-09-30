class User < ApplicationRecord
  has_many :stickers
  has_many :ratings
  has_many :sticker_marks, through: :ratings, source: :stickers
  # has_many :stickers, through: :ratings
  # validates :first_name, format: {with: /[A-Za-zА-Яа-я]{2:}/}
  # validates :last_name, format: {with: /[A-Za-zА-Яа-я]{2:}/}
  # тут должна быть проверка email на валидность
end
