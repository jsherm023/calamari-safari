class City < ApplicationRecord
  has_many :restaurant
  belongs_to :state
end
