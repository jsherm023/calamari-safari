class Restaurant < ApplicationRecord
  has_many :rating
  belongs_to :state
end
