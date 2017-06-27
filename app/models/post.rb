class Post < ApplicationRecord
  validates :title, :author, :link, :votes, :presence => true

  has_many :comments
end
