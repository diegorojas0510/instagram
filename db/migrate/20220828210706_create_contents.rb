class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.boolean :visible, default: true

      t.timestamps
    end
  end
end
