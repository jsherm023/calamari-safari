class AddCityStateAddressPostalCodeCountryToRestaurantsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :city, :string
    add_column :restaurants, :state, :string
    add_column :restaurants, :address, :string
    add_column :restaurants, :postal_code, :string
    add_column :restaurants, :country, :string
  end
end
