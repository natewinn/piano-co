class Customer < ActiveRecord::Base

	belongs_to :company
	
	has_many :alt_addresses 
	has_many :alt_contacts
	has_many :alt_emails
	has_many :alt_phones
	has_many :events

	validates_presence_of :address_1, :city, :state, :zip_code

	geocoded_by :address
	after_validation :geocode

	def address
	  [address_1, city, state, zip_code].compact.join(', ')
	end

end