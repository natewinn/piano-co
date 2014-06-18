class Event < ActiveRecord::Base

  belongs_to :service
  belongs_to :company
  belongs_to :customer

end