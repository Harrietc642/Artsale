class CreateInspirations < ActiveRecord::Migration[7.0]
  def change
    create_table :inspirations do |t|
      t.string :name
      t.string :year
      t.string :nationality
      t.string :wikipedia
      t.integer :painting

      t.timestamps
    end
  end
end
