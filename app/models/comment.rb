# app/models/comment.rb
class Comment < ApplicationRecord
  include Visible
  belongs_to :artist
  validates :body, presence: true, length: { minimum: 5 }
end
