class Article < ApplicationRecord
  has_many_attached :photos
  has_rich_text :body
end
