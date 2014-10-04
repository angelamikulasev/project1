# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  country    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Country < ActiveRecord::Base
	has_many :entries
	has_many :users, through: :entries
end
