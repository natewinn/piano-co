# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
 
  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  def default_url
    'default_image.jpg'
  end

  version :small do
    process :resize_to_fit => [32, 32]
  end  

  version :medium do  
    process :resize_to_fit => [256, 256]
  end

  version :large do
    process :resize_to_fit => [2048, 2048]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end