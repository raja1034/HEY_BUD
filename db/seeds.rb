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
Avatar.destroy_all

avatar_urls = [
  "https://media.istockphoto.com/photos/fine-art-abstract-floral-painting-background-picture-id1258336471?b=1&k=20&m=1258336471&s=170667a&w=0&h=9axQbqJmQz3qAGDJEqGWiDLnJ3Thvj55NrhqWcifaFg=",
  "https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXJ0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1569172122301-bc5008bc09c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YXJ0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1543857778-c4a1a3e0b2eb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGFydHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
]

avatar_urls.each do |avatar_url|
  Avatar.create(image_url: avatar_url)
end

luke = User.create!(first_name: 'Luke', last_name: 'Skywalker', city: 'Berlin', age: 27, username: 'Tree' ,email:'luke@luke.com', password: '123456', avatar: Avatar.all.sample)
bud = User.create!(first_name: 'Bud', last_name: 'Spencer', city: 'Vienena', age: 71, username: 'Banana', email:'luk2e@luke.com', password: '123456', avatar: Avatar.all.sample)
pipi = User.create!(first_name: 'Pipi', last_name: 'Langstrumpf', city: 'unkown', age: 14, username: 'Monkey_Power', email:'lukkke@luke.com', password: '123456', avatar: Avatar.all.sample)
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
