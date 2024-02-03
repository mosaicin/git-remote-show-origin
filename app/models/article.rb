# app/models/article.rb
class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy
  has_many :article_authors
  has_many :authors, through: :article_authors

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  def content
    # Здесь вы можете определить, как будет выглядеть содержимое статьи
    "#{title}: #{body}"
  end
end
