class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  mount_uploader :image, ImageUploader

  validates_acceptance_of :agree_terms

  has_many :posts,    dependent: :destroy
  has_many :comments
  has_many :handies  
  has_many :userprofiles
  accepts_nested_attributes_for :userprofiles
end