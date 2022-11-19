class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.text :comments
      t.references :customer, null: false, foreign_key: true
      t.references :artworks, null: false, foreign_key: true

      t.timestamps
    end
  end
end
