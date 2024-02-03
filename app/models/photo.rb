# app/models/photo.rb
class Photo < ApplicationRecord
  belongs_to :artist
  has_one_attached :image
end
