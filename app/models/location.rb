class Location < ApplicationRecord
  geocoded_by :location_address, :latitude  => :lat, :longitude => :lng
  after_validation :geocode, :if => lambda{ |obj| obj.location_address? }

  has_many :articles, dependent: :destroy
  has_many :users, through: :articles
end
