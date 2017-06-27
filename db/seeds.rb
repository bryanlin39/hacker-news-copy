# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

10.times do |index|
  new_post = Post.create!(
    title: Faker::Book.title,
    author: Faker::Internet.unique.user_name,
    link: Faker::Internet.url,
    votes: Faker::Number.number(2)
  )
  rand(1..3).times do |index|
    Comment.create(
      content: Faker::Lorem.sentence(3),
      author: Faker::Internet.unique.user_name,
      post_id: new_post.id
    )
  end
end
