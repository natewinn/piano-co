class Customer < ActiveRecord::Base

	belongs_to :company
	has_many :phone_numbers
	has_many :addresses
	has_many :contacts
	has_many :emails
	has_many :pianos
	has_many :appointments
	has_many :work_orders

end