class AddSlugToPoems < ActiveRecord::Migration[5.0]
  def change
    add_column :poems, :slug, :string
    add_index :poems, :slug, unique: true
  end
end
