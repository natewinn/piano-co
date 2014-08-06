class Piano < ActiveRecord::Base

	mount_uploader :image, ImageUploader

	belongs_to :customer

end