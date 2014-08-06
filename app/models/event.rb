class Event < ActiveRecord::Base

  belongs_to :service
  belongs_to :company
  belongs_to :customer

  before_create :find_end

	def find_end
	  a = start_time + service.duration.minutes
	  self.end_time = a
	end

end