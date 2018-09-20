class Sticker < ApplicationRecord
  has_many :tags, through: :sticker_tags
  has_many :ratings
  belongs_to :user
  validates :title,
            presence: true,
            length: {maximum: 50, minimum: 5}
  validates :user_id,
            presence: true
  validates :code_lang_id,
            presence: true

end
