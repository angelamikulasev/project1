class Location < ActiveRecord::Base
  reverse_geocoded_by :lat, :lon
  after_validation :reverse_geocod
end