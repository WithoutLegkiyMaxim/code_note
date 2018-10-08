class CodeLang < ApplicationRecord
  has_many :stickers#, class_name: "sticker", foreign_key: "reference_id"
  
  validates :name, presence: true
  validates :version, format: {with: /([0-9]\.)+/}
end
