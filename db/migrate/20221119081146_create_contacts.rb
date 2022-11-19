class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.text :subject
      t.string :name
      t.text :full_address
      t.string :phone
      t.text :hours

      t.timestamps
    end
  end
end
