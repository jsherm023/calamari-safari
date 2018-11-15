class State < ApplicationRecord
  has_many :restaurant
  has_many :city
end
