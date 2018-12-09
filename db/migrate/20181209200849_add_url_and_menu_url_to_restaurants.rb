class AddUrlAndMenuUrlToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :url, :string
    add_column :restaurants, :menu_url, :string
  end
end
