# == Schema Information
#
# Table name: entries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  date       :date
#  entry      :text
#  image      :text
#  location   :string(255)
#  lat        :float
#  long       :float
#  created_at :datetime
#  updated_at :datetime
#

class Entry < ActiveRecord::Base
	belongs_to :country
	belongs_to :user
end
