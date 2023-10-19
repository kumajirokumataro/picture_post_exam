class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :picture_post
end
