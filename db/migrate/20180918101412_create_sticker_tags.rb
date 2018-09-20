class CreateStickerTags < ActiveRecord::Migration[5.2]
  def change
    create_table :sticker_tags do |t|
      t.references :sticker, foreign_key: true, index: { unique: false}
      t.references :tag, foreign_key: true
    end
  end
end
