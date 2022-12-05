class AddProvinceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :province_n, :string
  end
end
