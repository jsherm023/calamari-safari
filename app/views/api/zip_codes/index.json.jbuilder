json.array! @zip_codes do |zip_code|
  json.id zip_code.id
  json.number zip_code.number
  json.city_id zip_code.city_id
end