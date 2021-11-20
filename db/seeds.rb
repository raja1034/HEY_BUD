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
puts "users  have been destroyed"
Interest.destroy_all
puts "interests  have been destroyed"
Avatar.destroy_all
puts "Avatars  have been destroyed"

avatar_urls = [
  "https://media.istockphoto.com/photos/fine-art-abstract-floral-painting-background-picture-id1258336471?b=1&k=20&m=1258336471&s=170667a&w=0&h=9axQbqJmQz3qAGDJEqGWiDLnJ3Thvj55NrhqWcifaFg=",
  "https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXJ0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1569172122301-bc5008bc09c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YXJ0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1543857778-c4a1a3e0b2eb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGFydHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
]

avatar_urls.each do |avatar_url|
  Avatar.create(image_url: avatar_url)
end

puts "avatars  have been created"

raja = User.create!(first_name: 'Raja', last_name: 'Nair', city: 'Berlin', age: 27, username: 'Hair Destroyer', avatar: Avatar.all.sample ,email:'rn@lewagon.com', password: '123456');
philipp = User.create!(first_name: 'Philipp', last_name: 'Berendes', city: 'Berlin', age: 50, username: 'SQL Ruler', avatar: Avatar.all.sample, email:'pb@lewagon.com', password: '123456');
victor = User.create!(first_name: 'Victor', last_name: 'Neumann', city: 'Berlin', age: 25, username: 'Busy Thing', avatar: Avatar.all.sample,email:'vn@lewagon.com', password: '123456');

natalie = User.create!(first_name: 'Natalie', last_name: 'Bechtold', city: 'Berlin', age: 27, username: 'The Baker', avatar: Avatar.all.sample ,email:'nb@lewagon.com', password: '123456');
linda = User.create!(first_name: 'Linda', last_name: 'Dao', city: 'Berlin', age: 50, username: 'The Coding Ninja', avatar: Avatar.all.sample, email:'ld@lewagon.com', password: '123456');
bernadette = User.create!(first_name: 'Bernadette', last_name: 'Diemer', city: 'Berlin', age: 25, username: 'Green Dresser', avatar: Avatar.all.sample,email:'bd@lewagon.com', password: '123456');

nathalie = User.create!(first_name: 'Nathalie', last_name: 'Faber', city: 'Berlin', age: 27, username: 'Party Starter', avatar: Avatar.all.sample ,email:'nf@lewagon.com', password: '123456');
virna = User.create!(first_name: 'Virna', last_name: 'Harri', city: 'Berlin', age: 50, username: 'Joke Maker', avatar: Avatar.all.sample, email:'vh@lewagon.com', password: '123456');
dennis = User.create!(first_name: 'Dennis', last_name: 'Jurczyk', city: 'Berlin', age: 25, username: 'Horse Rider', avatar: Avatar.all.sample,email:'dj@lewagon.com', password: '123456');

martin = User.create!(first_name: 'Martin', last_name: 'Krause', city: 'Berlin', age: 27, username: 'The Traveler', avatar: Avatar.all.sample ,email:'mk@lewagon.com', password: '123456');
toni = User.create!(first_name: 'Toni', last_name: 'Panacek', city: 'Berlin', age: 50, username: 'The Boss', avatar: Avatar.all.sample, email:'tp@lewagon.com', password: '123456');
leo = User.create!(first_name: 'Leo', last_name: 'Körber', city: 'Berlin', age: 25, username: 'Helping Hand', avatar: Avatar.all.sample, email:'lk@lewagon.com', password: '123456');

puts "All User are created "

music = Interest.create!(name: 'Music');
video_games = Interest.create!(name: 'Video Games');
sports = Interest.create!(name: 'Sports');
traveling = Interest.create!(name: 'Traveling');
board_games = Interest.create!(name: 'Board Games');
eating_out  = Interest.create!(name: 'Eating Out');
dancing = Interest.create!(name: 'Dancing');
painting = Interest.create!(name: 'Painting');
cooking  = Interest.create!(name: 'Cooking');
movies = Interest.create!(name: 'Movies');
reading = Interest.create!(name: 'Reading');
politics = Interest.create!(name: 'Politics');


puts "interests created"

user_interest = UserInterest.create!(user_id: raja.id, interest_id: sports.id, description: 'Love talking about cricket and football. Enjoy playing basketball');
user_interest = UserInterest.create!(user_id: raja.id, interest_id: music.id, description: 'Life without electro is very sad');
user_interest = UserInterest.create!(user_id: raja.id, interest_id: cooking.id, description: 'Indian Food for the win!');

user_interest = UserInterest.create!(user_id: leo.id, interest_id: sports.id, description: 'Look basketball and Yoga!');
user_interest = UserInterest.create!(user_id: leo.id, interest_id: music.id, description: ' Anything with Guitar is my jam!');
user_interest = UserInterest.create!(user_id: leo.id, interest_id: traveling.id, description: 'Cannot wait to travel again');

user_interest = UserInterest.create!(user_id: toni.id, interest_id: dancing.id, description: 'Look basketball and Yoga!');
user_interest = UserInterest.create!(user_id: toni.id, interest_id: music.id, description: ' Anything with Guitar is my jam!');
user_interest = UserInterest.create!(user_id: toni.id, interest_id: traveling.id, description: 'Cannot wait to travel again');

user_interest = UserInterest.create!(user_id: dennis.id, interest_id: eating_out.id, description: 'Look basketball and Yoga!');
user_interest = UserInterest.create!(user_id: dennis.id, interest_id: reading.id, description: ' Anything with Guitar is my jam!');
user_interest = UserInterest.create!(user_id: dennis.id, interest_id: board_games.id, description: 'Cannot wait to travel again');

user_interest = UserInterest.create!(user_id: martin.id, interest_id: sports.id, description: 'Look basketball and Yoga!');
user_interest = UserInterest.create!(user_id: martin.id, interest_id: music.id, description: ' Anything with Guitar is my jam!');
user_interest = UserInterest.create!(user_id: martin.id, interest_id: politics.id, description: 'Cannot wait to travel again');

user_interest = UserInterest.create!(user_id: bernadette.id, interest_id: sports.id, description: 'Cooking Vegan Bread!');
user_interest = UserInterest.create!(user_id: bernadette.id, interest_id: music.id, description: ' Anything with Violin is my jam!');
user_interest = UserInterest.create!(user_id: bernadette.id, interest_id: cooking.id, description: 'I love to oil paint');

puts "User interests --done"
