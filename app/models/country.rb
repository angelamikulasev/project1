# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  country    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Country < ActiveRecord::Base
	has_many :entries
	belongs_to :user
end
