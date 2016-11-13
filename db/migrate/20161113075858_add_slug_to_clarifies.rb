class AddSlugToClarifies < ActiveRecord::Migration[5.0]
  def change
    add_column :clarifies, :slug, :string
    add_index :clarifies, :slug, unique: true
  end
end
