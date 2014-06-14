class Customer < ActiveRecord::Base

	belongs_to :company
	
	has_many :contacts 
	has_many :phone_numbers
	has_many :addresses
	has_many :eaddresses

	accepts_nested_attributes_for :contacts, :phone_numbers, :addresses, :eaddresses

	geocoded_by :full_street_address
	after_create :geo_code

end