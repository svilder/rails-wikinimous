# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'start seeding'
Article.destroy_all

Article.create(title: 'The meaning of life', content: "It's 42!")

def create_seed(number_of_times)
  number_of_times.times do
    Article.create(title: Faker::Book.title, content: Faker::GreekPhilosophers.quote)
  end
end

create_seed(15)

puts 'Done seeding'
