class Entry < ActiveRecord::Base
	belongs_to :country
	belongs_to :user

	geocoded_by :address
  after_validation :geocode
end