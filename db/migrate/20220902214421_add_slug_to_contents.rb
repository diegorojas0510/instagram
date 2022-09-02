class AddSlugToContents < ActiveRecord::Migration[7.0]
  def change
    add_column :contents, :slug, :string
    add_index :contents, :slug, unique: true
  end
end
