class Post < ApplicationRecord
  has_one_attached :post_cover
  belongs_to :person
end
