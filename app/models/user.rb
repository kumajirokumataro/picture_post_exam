class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :picuture_posts
end
