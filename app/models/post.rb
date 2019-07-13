class Post < ApplicationRecord
  # has_attached_file :image, 
  # styles: 
  # {   large: "1500x1500", 
  #     medium: "550x550",
  #     thumb: "380x380"}, 
  #     default_url:  ""# "/images/:style/missing.png"

  validates_attachment :image
  validates_presence_of :title, :content

  mount_uploader :image, ImageUploader

  has_many :comments, dependent: :destroy
  has_many :starts, dependent: :destroy
  accepts_nested_attributes_for :starts, :allow_destroy => true, :reject_if => :all_blank
  validates_associated :starts
  belongs_to :user
  
end