class RemoveStateIdAndCityIdFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :city_id, :integer
    remove_column :restaurants, :state_id, :integer
  end
end
