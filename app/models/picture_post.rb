class PicturePost < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :favorite_post_pictures, through: :favorites, source: :picture_post
  mount_uploader :image, ImageUploader
end
