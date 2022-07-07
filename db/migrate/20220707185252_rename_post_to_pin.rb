class RenamePostToPin < ActiveRecord::Migration[7.0]
  def change
    rename_table :posts, :pins
  end
end
