# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },
#                          { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 1 user 3interessen 2 userintress
User.destroy_all
Interest.destroy_all
luke = User.create!(first_name: 'Luke', last_name: 'Skywalker', city: 'Berlin', age: 27, username: 'Tree', avatar: 'unkown' ,email:'luke@luke.com', password: '123456');
bud = User.create!(first_name: 'Bud', last_name: 'Spencer', city: 'Vienena', age: 71, username: 'Banana', avatar: 'unkown', email:'luk2e@luke.com', password: '123456');
pipi = User.create!(first_name: 'Pipi', last_name: 'Langstrumpf', city: 'unkown', age: 14, username: 'Monkey_Power', avatar: 'unkown',email:'lukkke@luke.com', password: '123456');
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
