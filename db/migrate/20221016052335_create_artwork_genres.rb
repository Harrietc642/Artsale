class CreateArtworkGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :artwork_genres do |t|
      t.references :artworks, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
