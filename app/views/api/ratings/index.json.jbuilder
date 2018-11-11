json.array! @ratings do |rating|
  json.id rating.id
  json.star rating.star
  json.review rating.review
  json.must_visit rating.must_visit
  json.source rating.source
  json.restaurant_id rating.restaurant_id
  json.user_id rating.user_id
end