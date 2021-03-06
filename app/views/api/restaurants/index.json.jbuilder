json.array! @restaurants do |restaurant|
json.id restaurant.id
json.name restaurant.name
json.description restaurant.description
json.cuisine restaurant.cuisine
json.style restaurant.style
json.area restaurant.area
json.phone restaurant.phone
json.price restaurant.price
json.reserve_url restaurant.reserve_url
json.mobile_reserve_url restaurant.mobile_reserve_url
json.image_url restaurant.image_url
json.city restaurant.city
json.state restaurant.state
json.address restaurant.address
json.postal_code restaurant.postal_code
json.country restaurant.country
json.url restaurant.url
json.menu_url restaurant.menu_url
end