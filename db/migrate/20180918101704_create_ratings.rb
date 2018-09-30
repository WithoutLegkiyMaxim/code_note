class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :sticker, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :mark, default: nil

      t.timestamps
    end
  end
end
