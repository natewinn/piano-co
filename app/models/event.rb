class Event < ActiveRecord::Base

  belongs_to :service
  belongs_to :company
  belongs_to :customer

  after_save :find_end

	def find_end
	  a = start_time + service.duration
	  update_column(end_time, a)
	end

end