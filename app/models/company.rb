class Company < ActiveRecord::Base

	# validates_inclusion_of :time_zone, :in => ActiveSupport::TimeZone.us_zones.map(&:to_s)

	belongs_to :user
	has_many :services
	has_many :customers
	has_many :employees

end