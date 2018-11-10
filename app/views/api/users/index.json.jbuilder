json.array! @users do |user|
  json.id user.id
  json.first_name user.first_name
  json.last_name user.last_name
  json.email user.email
  json.password_digest user.password_digest
  json.phone_number user.phone_number
end