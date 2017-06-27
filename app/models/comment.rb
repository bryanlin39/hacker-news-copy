class Comment < ApplicationRecord
  validates :content, :author, :presence => true

  belongs_to :post
end
