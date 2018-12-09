class Restaurant < ApplicationRecord
  has_many :ratings
  has_many :users, through: :ratings
  has_many :menu
  validates_uniqueness_of :name
end
