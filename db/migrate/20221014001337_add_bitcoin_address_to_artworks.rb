class AddBitcoinAddressToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :bitcoin_address, :string
  end
end
