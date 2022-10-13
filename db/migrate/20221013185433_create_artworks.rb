class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.decimal :price
      t.string :brand
      t.references :inspiration, null: false, foreign_key: true

      t.timestamps
    end
  end
end
