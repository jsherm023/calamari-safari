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
resp['restaurants'][0]['name']
Restaurant.create(name: resp['restaurants'][0]['name'], ) # => restaurant records
# Fetch a single record
 api.restaurant(81169)
