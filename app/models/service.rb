class Service < ActiveRecord::Base

  has_many :events
  has_many :companies, :through => :events

end
