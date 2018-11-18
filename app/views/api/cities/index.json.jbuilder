json.array! @cities do |city|
  json.id city.id
  json.name city.name
  json.state_id city.state_id
end