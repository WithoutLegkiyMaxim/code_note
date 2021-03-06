class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :sticker, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :mark, default: false

      t.timestamps
    end
  end
end
