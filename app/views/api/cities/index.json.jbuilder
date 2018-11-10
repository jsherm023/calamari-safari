json.array! @cities do |city|
  json.id city.id
  json.name city.name
  json.zip_code city.zip_code
  json.state_id city.state_id
end