# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },
#                          { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

avatar_urls = ["https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=928&q=80", "https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=890&q=80"]
avatar_urls.each do |url|
  Avatar.create(image_url: url)
end
# 1 user 3interessen 2 userintress
User.destroy_all
Interest.destroy_all
luke = User.create!(first_name: 'Luke', last_name: 'Skywalker', city: 'Berlin', age: 27, username: 'Tree', email:'luke@luke.com', password: '123456');
bud = User.create!(first_name: 'Bud', last_name: 'Spencer', city: 'Vienena', age: 71, username: 'Banana', email:'luk2e@luke.com', password: '123456');
pipi = User.create!(first_name: 'Pipi', last_name: 'Langstrumpf', city: 'unkown', age: 14, username: 'Monkey_Power', email:'lukkke@luke.com', password: '123456');
luke.save;
puts " DOne all User are created "

cooking = Interest.create!(name: 'Cooking')
trees = Interest.create!(name: 'Trees')
biking  = Interest.create!(name: 'Biking')

poetry = Interest.create!(name: 'Poetry')
flower = Interest.create!(name: 'Flowers')
book  = Interest.create!(name: 'Books')

puts " interessest done"
p luke
user_interest = UserInterest.create!(user_id: luke.id, interest_id: cooking.id, description: 'Cooking and Travel');
user_interest = UserInterest.create!(user_id: luke.id, interest_id: trees.id, description: ' Trees blabala');
user_interest = UserInterest.create!(user_id: pipi.id, interest_id: biking.id, description: ' Bloody Dramas');

puts "User interesset --done"
