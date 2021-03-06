class User < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :microposts
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true    
  validates :image, presence: true
end
