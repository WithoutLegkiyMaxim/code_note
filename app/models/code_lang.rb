class CodeLang < ApplicationRecord
  validates :name, presence: true
  validates :version, format: {with: /([0-9]\.)+/}
end
