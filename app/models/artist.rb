# app/models/artist.rb
class Artist < ApplicationRecord
  has_many :comments
  # ... остальной код модели
end
