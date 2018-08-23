class Post < ApplicationRecord
  # has_attached_file :image, 
  # styles: 
  # {   large: "1500x1500", 
  #     medium: "550x550",
  #     thumb: "380x380"}, 
  #     default_url:  ""# "/images/:style/missing.png"

  validates_attachment :image

	 mount_uploader :image, ImageUploader

  
end