class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.text :lyrics
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
