# User.create(first_name: "Joe", last_name: "Sherman", email: "joseph.sh3rman@gmail.com", password_digest: "abc123", phone_number: "630-781-9454")
# User.create(first_name: "Lindsay", last_name: "Sherman", email: "lindsay.sh3rman@gmail.com", password_digest: "1098zxy", phone_number: "708-555-5555")
require "faraday"
require "faraday_middleware"
require "unirest"

# module OpenTable
#   class Error < StandardError ; end

#   module Request
#     API_BASE = "http://opentable.herokuapp.com"

#     def connection
#       connection = Faraday.new(API_BASE) do |c|
#         c.use(Faraday::Request::UrlEncoded)
#         c.use(Faraday::Response::ParseJson)
#         c.adapter(Faraday.default_adapter)
#       end
#     end

#     def request(method, path, params={}, raw=false)
#       headers = {'Accept' => 'application/json'}
#       path = "/api#{path}"

#       response = connection.send(method, path, params) do |request|
#         request.url(path, params)
#       end

#       if [404, 403, 400].include?(response.status)
#         raise OpenTable::Error, response.body["error"]
#       end

#       raw ? response : response.body
#     end

#     def get(path, params={})
#       request(:get, path, params)
#     end
#   end

#   class Client
#     include Request

#     def countries
#       get("/countries")
#     end

#     def cities(country=nil)
#       get("/cities")
#     end

#     def restaurants(options={})
#       get("/restaurants", options)
#     end

#     def restaurant(id)
#       get("/restaurants/#{id}")
#     end
#   end
# end
# api = OpenTable::Client.new

# # Find restaurants
#  resp = api.restaurants(:city => "Chicago", :page => 25)

# # Process response

# resp['count']    # => records found
# p resp['restaurants']

# index = 0
#  p resp
# resp['restaurants'].each do 
# Restaurant.create(
#   name: resp['restaurants'][index]['name'],
#   address: resp['restaurants'][index]['address'],
#   city: resp['restaurants'][index]['city'],
#   state: resp['restaurants'][index]['state'],
#   area: resp['restaurants'][index]['area'],
#   postal_code: resp['restaurants'][index]['postal_code'],
#   country: resp['restaurants'][index]['country'],
#   phone: resp['restaurants'][index]['phone'],
#   lat: resp['restaurants'][index]['lat'],
#   lng: resp['restaurants'][index]['lng'],
#   price: resp['restaurants'][index]['price'],
#   reserve_url: resp['restaurants'][index]['reserve_url'],
#   mobile_reserve_url: resp['restaurants'][index]['mobile_reserve_url'],
#   image_url: resp['restaurants'][index]['image_url'])
# index += 1
# end 
# # => restaurant records
# # Fetch a single record
#  api.restaurant(81169)

#make api request
zomato_instance = Romato::Zomato.new("91d2cff6209c41fedf9b0f01c6ce8e78")


#create instance of restaurant including id
zomato_instance.get_geocode( { lat: "41.891256", lon: "-87.625365" } )


#call city on zomato_instance.restaurant
# p zomato_instance.geocode['nearby_restaurants']

# print Zomato Restaurant id
p zomato_instance.geocode['nearby_restaurants'][0]['restaurant']['id']



# #add rating
# p zomato_instance.geocode['nearby_restaurants'][0]['restaurant']['user_rating']["aggregate_rating"]

index = 0
zomato_instance.geocode['nearby_restaurants'].each do 
Restaurant.create(
  name: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['name'],
  address: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['location']['address'],
  city: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['location']['city'],
  area: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['location']['locality'],
  postal_code: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['location']['zipcode'],
  lat: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['location']['latitude'],
  lng: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['location']['longitude'],
  price: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['price_range'],
  reserve_url: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['book_form_web_view_url'],
  image_url: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['featured_image'],
  url: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['url'],
  menu_url: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['menu_url'],
   cuisine: zomato_instance.geocode['nearby_restaurants'][index]['restaurant']['cuisines'],
   zomato_id: zomato_instance.geocode['nearby_restaurants'][0]['restaurant']['id'])
index += 1
end 



