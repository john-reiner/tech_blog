# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    User.create!(username: Faker::Name.name, password: "asdf")
end

10.times do 
    TechnologyTopic.create!(name: Faker::ProgrammingLanguage.name)
end

25.times do 
    Blog.create!(name: Faker::Movies::HarryPotter.character, body: Faker::Lorem.paragraph(sentence_count: 20), user_id: rand(1..10), technology_topic_id: rand(1..10) )
end

100.times do 
    Comment.create!(body: Faker::TvShows::SouthPark.quote, user_id: rand(1..10), blog_id: rand(1..25))
end 



