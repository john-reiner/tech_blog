# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do 
    TechnologyTopic.create!(name: Faker::ProgrammingLanguage.name)
end

25.times do 
    Blog.create!(name: Faker::Music.album, body: Faker::Lorem.paragraph(sentence_count: 20), technology_topic_id: rand(1..10))
end

