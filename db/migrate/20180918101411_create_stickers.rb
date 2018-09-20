class CreateStickers < ActiveRecord::Migration[5.2]
  def change
    create_table :stickers do |t|
      t.string :title
      t.text :description
      t.text :code
      t.references :user, foreign_key: true
      t.references :code_lang, foreign_key: true

      t.timestamps
    end
    add_index :stickers, :id
  end
end
