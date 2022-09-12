class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :phone
      t.string :photo
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
