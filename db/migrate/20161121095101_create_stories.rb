class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :content
      t.string :slug

      t.timestamps
    end
    add_index :stories, :slug, unique: true
  end
end
