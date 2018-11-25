# User.create(first_name: "Joe", last_name: "Sherman", email: "joseph.sh3rman@gmail.com", password_digest: "abc123", phone_number: "630-781-9454")
# User.create(first_name: "Lindsay", last_name: "Sherman", email: "lindsay.sh3rman@gmail.com", password_digest: "1098zxy", phone_number: "708-555-5555")
require "faraday"
require "faraday_middleware"

module OpenTable
  class Error < StandardError ; end

  module Request
    API_BASE = "http://opentable.herokuapp.com"

    def connection
      connection = Faraday.new(API_BASE) do |c|
        c.use(Faraday::Request::UrlEncoded)
        c.use(Faraday::Response::ParseJson)
        c.adapter(Faraday.default_adapter)
      end
    end

    def request(method, path, params={}, raw=false)
      headers = {'Accept' => 'application/json'}
      path = "/api#{path}"

      response = connection.send(method, path, params) do |request|
        request.url(path, params)
      end

      if [404, 403, 400].include?(response.status)
        raise OpenTable::Error, response.body["error"]
      end

      raw ? response : response.body
    end

    def get(path, params={})
      request(:get, path, params)
    end
  end

  class Client
    include Request

    def countries
      get("/countries")
    end

    def cities(country=nil)
      get("/cities")
    end

    def restaurants(options={})
      get("/restaurants", options)
    end

    def restaurant(id)
      get("/restaurants/#{id}")
    end
  end
end
api = OpenTable::Client.new

# Find restaurants
 resp = api.restaurants(:city => "Chicago")

# Process response
 resp['count']       # => records found
resp['restaurants']
index = 1
resp['restaurants'].each do |resp|
Restaurant.create(name: resp['restaurants'][index]['name'], address: resp['restaurants'][index]['address'], city: resp['restaurants'][index]['city'], state: resp['restaurants'][index]['state'], area: resp['restaurants'][index]['area'], postal_code: resp['restaurants'][index]['postal_code'], country: resp['restaurants'][index]['country'], phone: resp['restaurants'][index]['phone'], lat: resp['restaurants'][index]['lat'], lng: resp['restaurants'][index]['lng'], price: resp['restaurants'][index]['price'], reserve_url: resp['restaurants'][index]['reserve_url'], mobile_reserve_url: resp['restaurants'][index]['mobile_reserve_url'], image_url: resp['restaurants'][index]['image_url'])
index += 1
end 
# => restaurant records
# Fetch a single record
 api.restaurant(81169)
