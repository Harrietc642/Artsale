class CreateArtworkOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :artwork_orders do |t|
      t.references :artworks, null: false, foreign_key: true
      t.references :orders, null: false, foreign_key: true

      t.timestamps
    end
  end
end
