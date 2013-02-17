# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating Julien"
User.create(
  name: "Julien Capron",
  username: "elniafron62",
  image: "http://graph.facebook.com/604185764/picture?type=square"
)
puts "Julien created"

puts "Creating caca"
User.create(
  username: "caca",
  image: "http://funnypoopers.com/wp-content/uploads/2013/01/check_out_that_poop__by_xneetoh-d4utoz2.jpg"
)
puts "Julien created"

puts "Creating flower"
User.create(
  username: "flower",
  image: "http://openclipart.org/people/PeterM/PeterM_Flower.svg"
)
puts "Julien created"

puts "Deleting tweets"
Tweet.delete_all
puts "Tweets deleted"

puts "Creating tweets"
User.all.each do |user|
  3.times do |i|
    Tweet.create(user_id: user.id, message: "This is my tweet number #{i+1}")
  end
end
puts "Tweets created"

puts "Adding followings to Julien"
User.first.followings << User.find_by_username("caca")
User.first.followings << User.find_by_username("flower")
puts "Followings added"

User.first.followings.delete(User.find_by_username("caca"))
