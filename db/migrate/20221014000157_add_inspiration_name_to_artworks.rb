class AddInspirationNameToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :inspiration_name, :string
  end
end
