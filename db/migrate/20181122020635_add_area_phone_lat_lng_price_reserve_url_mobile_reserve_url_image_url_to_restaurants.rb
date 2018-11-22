class AddAreaPhoneLatLngPriceReserveUrlMobileReserveUrlImageUrlToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :area, :string
    add_column :restaurants, :phone, :string
    add_column :restaurants, :lat, :decimal, precision: 9, scale: 9
    add_column :restaurants, :lng, :decimal, precision: 9, scale: 9
    add_column :restaurants, :price, :integer
    add_column :restaurants, :reserve_url, :string
    add_column :restaurants, :mobile_reserve_url, :string
    add_column :restaurants, :image_url, :string
  end
end
