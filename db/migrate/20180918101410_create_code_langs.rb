class CreateCodeLangs < ActiveRecord::Migration[5.2]
  def change
    create_table :code_langs do |t|
      t.string :name
      t.string :version

    end
    # индексируем таблицу языков программирования
    # для быстрого доступа
    add_index :code_langs, :id
    add_index :code_langs, :name
  end
end
