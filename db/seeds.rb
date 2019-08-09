# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


# seed the skill
puts 'Cleaning data base...'
Review.destroy_all
Booking.destroy_all
GrandmaSkill.destroy_all
Skill.destroy_all
Grandma.destroy_all
User.destroy_all

puts 'Creating skill list'
skills = Skill.create(name: "Cooking")
skills = Skill.create(name: "Baking")
skills = Skill.create(name: "Reading")
skills = Skill.create(name: "Knitting")
skills = Skill.create(name: "Story-telling")
skills = Skill.create(name: "Child-care")
skills = Skill.create(name: "Looking for Glasses")
skills = Skill.create(name: "Motivating")
skills = Skill.create(name: "Wise Commenter")
skills = Skill.create(name: "Telling People Off")
skills = Skill.create(name: "Gardening")
skills = Skill.create(name: "Coffee Time")
skills = Skill.create(name: "Playing Cards")
skills = Skill.create(name: "Waking Up")
skills = Skill.create(name: "History Lesson")
skills = Skill.create(name: "Sewing")
puts 'Skill list complete'

# seed user

puts 'Creating users'

users_attributes = [
  {
    first_name: "John" ,
    last_name: "Snow" ,
    age: 32 ,
    email: "jsnow@gmail.com",
    location:Faker::Address.full_address,
    remote_avatar_url: "https://cdn1.thr.com/sites/default/files/imagecache/scale_crop_768_433/2017/08/helen_sloan_-_hbo_photo_43_-_h_2017.jpg",
    password: "Test123",
  },
    {
    first_name: "Daenerys" ,
    last_name: "Targaryen" ,
    age: 28 ,
    email: "dtargaryen@gmail.com",
    location:Faker::Address.full_address,
    remote_avatar_url: "https://img.static-rmg.be/a/view/q75/w720/h480/1983872/daenerys-png.png",
    password: "Test123",
  },
    {
    first_name: "Cersei",
    last_name: "Lannister",
    age: 41,
    email: "clannister@gmail.com",
    location: Faker::Address.full_address,
    remote_avatar_url: "https://statics.lesinrocks.com/content/thumbs/uploads/2017/10/width-715/capture-decran-2017-10-18-a-13-04-13.png",
    password: "Test123",
  },
    {
    first_name: "Arya" ,
    last_name: "Stark" ,
    age: 17 ,
    email: "astark@gmail.com" ,
    location: Faker::Address.full_address,
    remote_avatar_url: "https://img.huffingtonpost.com/asset/5cbda7c8240000b900068412.jpeg",
    password: "Test123",
  },
    {
    first_name: "Sansa" ,
    last_name: "Stark" ,
    age: 21 ,
    email: "sstark@gmail.com",
    location: Faker::Address.full_address,
    remote_avatar_url: "https://static.lexpress.fr/medias_10934/w_845,h_473,c_crop,x_23,y_23/w_960,h_540,c_fill,g_north/v1463387073/maintes-fois-bafouee-sansa-stark-sophie-turner-montre-tout-sa-force-de-conviction-dans-cet-episode_5598233.jpg",
    password: "Test123",
  }
]

def create_bookings


end

def rand_date(days)
  rand(days).days.ago(Date.today)
end

users_attributes.each do |user|
  puts "creating a user"
  newuser = User.create!(user)
  rand(1..3).times do
    grandma = Grandma.new(
      first_name: Faker::Name.female_first_name,
      last_name: Faker::Name.last_name,
      age: rand(70..100),
      location: Faker::Address.city,
      remote_avatar_url: "https://loremflickr.com/600/800/grandmother",
      user: newuser,
      skills: Skill.all.sample(rand(0..6))
      )
    grandma.save!
      # usercount = rand(User.count)
      # grandmacount = rand(Grandma.count)

    booking = Booking.new(
      user: User.last(2).first,
      grandma: grandma,
      start_date: rand_date(30..60),
      end_date: rand_date(29)
    )
    booking.save!
  end
end

# hey laura, its eLi... remove your date in future validations to run the seed .... otherwise you cannot use past dates



puts 'database done'



# # seed the grandmas
# puts 'Cleaning grandma data...'

# puts 'Creating skill list'

# 10.times do
#   grandma = Grandma.new(
#     first_name: Faker::Name.female_first_name,
#     last_name: Faker::Name.last_name,
#     age: rand(70..100),
#     location: Faker::Address.full_address,
#     remote_avatar_url: "https://www.irelandsown.ie/wp-content/uploads/2015/02/gran.jpg",

#     # how do I connect the grandma to the existing user
#     )
#   grandma.save!
# end

#seed bookings and reviews
