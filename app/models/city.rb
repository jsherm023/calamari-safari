class City < ApplicationRecord
  has_many :restaurant
  has_many :zip_code
  belongs_to :state
end
