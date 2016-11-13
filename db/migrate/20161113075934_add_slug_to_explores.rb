class AddSlugToExplores < ActiveRecord::Migration[5.0]
  def change
    add_column :explores, :slug, :string
    add_index :explores, :slug, unique: true
  end
end
