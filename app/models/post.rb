class Post < ApplicationRecord
  validates :title, :author, :link, :presence => true

  has_many :comments

  scope :today, -> { where("created_at >=?", Time.now.beginning_of_day)}
  scope :three_most_recent_post, -> { order(created_at: :desc).limit(3)}
  scope :five_most_upvoted, -> { order(votes: :desc).limit(5)}

  scope :most_commented, -> {(
    select("posts.id, posts.title, posts.author, count(comments.id) as comments_count")
    .joins(:comments)
    .group("posts.id")
    .order("comments_count DESC")
    .limit(10)
    )}

  scope :search, -> (keyword) { where("title like ?", "%#{keyword}%")}
end
