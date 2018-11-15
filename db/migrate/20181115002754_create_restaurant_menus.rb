class CreateRestaurantMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_menus do |t|
      t.integer :restaurant_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
