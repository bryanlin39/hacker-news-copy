class Post < ApplicationRecord
  validates :title, :author, :link, :presence => true

  has_many :comments
end
