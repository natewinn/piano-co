class Address < ActiveRecord::Base

	belongs_to :customer

	validates_presence_of :zip_code

	geocoded_by :zip_code
	after_create :geocode
	
	# def address_full
 #  	[address_1, city, state, zip_code].compact.join(', ')
	# end

	

end