class AddZomatoIdToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :zomato_id, :integer
  end
end
