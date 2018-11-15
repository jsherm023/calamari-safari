class Restaurant < ApplicationRecord
  has_many :ratings
  has_many :users, through: :ratings
  belongs_to :state
  belongs_to :city
  has_many :menu
end
