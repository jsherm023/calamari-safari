json.array! @restaurant_menus do |restaurant_menu|
  json.id restaurant_menu.id
  json.restaurant_id restaurant_menu.restaurant_id
  json.menu_id restaurant_menu.menu_id
end