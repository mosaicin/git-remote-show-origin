class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
