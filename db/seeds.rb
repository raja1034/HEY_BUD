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
raja = User.create!(first_name: 'Raja', last_name: 'Nair', city: 'Berlin', age: 27, username: 'Hair Destroyer', avatar: 'unkown' ,email:'rn@lewagon.com', password: '123456');
philipp = User.create!(first_name: 'Philipp', last_name: 'Berendes', city: 'Berlin', age: 50, username: 'SQL Ruler', avatar: 'unkown', email:'pb@lewagon.com', password: '123456');
victor = User.create!(first_name: 'Victor', last_name: 'Neumann', city: 'Berlin', age: 25, username: 'Busy Thing', avatar: 'unkown',email:'vn@lewagon.com', password: '123456');

natalie = User.create!(first_name: 'Natalie', last_name: 'Bechtold', city: 'Berlin', age: 27, username: 'The Baker', avatar: 'unkown' ,email:'nb@lewagon.com', password: '123456');
linda = User.create!(first_name: 'Linda', last_name: 'Dao', city: 'Berlin', age: 50, username: 'The Coding Ninja', avatar: 'unkown', email:'ld@lewagon.com', password: '123456');
bernadette = User.create!(first_name: 'Bernadette', last_name: 'Diemer', city: 'Berlin', age: 25, username: 'Green Dresser', avatar: 'unkown',email:'bd@lewagon.com', password: '123456');

nathalie = User.create!(first_name: 'Nathalie', last_name: 'Faber', city: 'Berlin', age: 27, username: 'Party Starter', avatar: 'unkown' ,email:'nf@lewagon.com', password: '123456');
virna = User.create!(first_name: 'Virna', last_name: 'Harri', city: 'Berlin', age: 50, username: 'Joke Maker', avatar: 'unkown', email:'vh@lewagon.com', password: '123456');
dennis = User.create!(first_name: 'Dennis', last_name: 'Jurczyk', city: 'Berlin', age: 25, username: 'Horse Rider', avatar: 'unkown',email:'dj@lewagon.com', password: '123456');

martin = User.create!(first_name: 'Martin', last_name: 'Krause', city: 'Berlin', age: 27, username: 'The Traveler', avatar: 'unkown' ,email:'mk@lewagon.com', password: '123456');
toni = User.create!(first_name: 'Toni', last_name: 'Panacek', city: 'Berlin', age: 50, username: 'The Boss', avatar: 'unkown', email:'tp@lewagon.com', password: '123456');
leo = User.create!(first_name: 'Leo', last_name: 'Körber', city: 'Berlin', age: 25, username: 'Helping Hand', avatar: 'unkown',email:'lk@lewagon.com', password: '123456');

puts " Done all User are created "

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


puts " interest done"

user_interest = UserInterest.create!(user_id: raja.id, interest_id: sports.id, description: 'Love talking about cricket and football. Enjoy playing basketball');
user_interest = UserInterest.create!(user_id: raja.id, interest_id: music.id, description: 'Life without electro is very sad');
user_interest = UserInterest.create!(user_id: raja.id, interest_id: cooking.id, description: 'Indian Food for the win!');

user_interest = UserInterest.create!(user_id: leo.id, interest_id: sports.id, description: 'Look basketball and Yoga!');
user_interest = UserInterest.create!(user_id: leo.id, interest_id: music.id, description: ' Anything with Guitar is my jam!');
user_interest = UserInterest.create!(user_id: leo.id, interest_id: traveling.id, description: 'Cannot wait to travel again');

puts "User interest --done"
