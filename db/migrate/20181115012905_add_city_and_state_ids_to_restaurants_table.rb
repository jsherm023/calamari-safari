class AddCityAndStateIdsToRestaurantsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :state_id, :integer
    add_column :restaurants, :city_id, :integer
  end
end
