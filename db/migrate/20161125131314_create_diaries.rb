class CreateDiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :diaries do |t|
      t.string :title
      t.text :content
      t.string :slug

      t.timestamps
    end
    add_index :diaries, :slug, unique: true
  end
end
