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
skills = Skill.create(name: "coding")
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

img1 = "https://i.pinimg.com/564x/8f/4a/ed/8f4aedbc0c58c5caac21642be233b310.jpg"
img2 = "https://i.pinimg.com/564x/56/09/ad/5609adfec12f928ca230860d47a030ea.jpg"
img3 = "https://i.pinimg.com/564x/49/bb/23/49bb23581135c5e5cf6cf9cb26e36c3a.jpg"
img4 = "https://i.pinimg.com/564x/75/4f/94/754f9458d4dcb05ddcc7c17eb8608913.jpg"
img5 = "https://i.pinimg.com/564x/55/0d/43/550d435ab22ffda9aace566736c8d64a.jpg"
img6 = "https://i.pinimg.com/564x/f2/d0/d2/f2d0d2ecd9e2bccb2f5829d3a462a113.jpg"
img7 = "https://i.pinimg.com/564x/e8/f2/6a/e8f26accb10ef63e614288b3562fd03f.jpg"
img8 = "https://i.pinimg.com/564x/7b/50/a7/7b50a7fc8ed2984fab9666d4a49eb5c7.jpg"
img9 = "https://i.pinimg.com/564x/fe/58/83/fe588350efbc96f3ac7f7801ae690a02.jpg"
img10 = "https://i.pinimg.com/564x/61/48/4d/61484dc2ed45dd741c1b4530713be925.jpg"
img11 = "https://i.pinimg.com/564x/ae/09/79/ae09791a020c404476b0fc7f7fa83506.jpg"
img12 = "https://i.pinimg.com/564x/7f/be/ef/7fbeefaa1545e063d0aad3700a7e47c0.jpg"
img13 = "https://i.pinimg.com/564x/b1/dc/4b/b1dc4b2c8e938964a533c2ae31e25991.jpg"
img14 = "https://i.pinimg.com/564x/93/9f/a5/939fa52f2dcdd53959e58e7b2fef446e.jpg"
img15 = "https://i.pinimg.com/564x/1f/12/e0/1f12e0926bc7c42f83c623ee98491c0a.jpg"
img16 = "https://i.pinimg.com/564x/d2/dc/67/d2dc67a57f495de3f192edcb635f4a73.jpg"
img17 = "https://i.pinimg.com/564x/e9/95/5a/e9955affcb6d36af5ddf736089e77730.jpg"
img18 = "https://i.pinimg.com/564x/b7/64/6b/b7646bbd4422317c01eff10c376eecfe.jpg"
img19 = "https://i.pinimg.com/564x/d0/f2/2d/d0f22d6a1a40ea4ad9407a4a2cc37c28.jpg"




grandma_avatars = [img1, img2, img3, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15, img16, img17, img18, img19]

users_attributes.each do |user|
  puts "creating a user"
  newuser = User.create!(user)
  rand(1..10).times do
    grandma = Grandma.new(
      first_name: Faker::Name.female_first_name,
      last_name: Faker::Name.last_name,
      age: rand(70..100),
      location: Faker::Address.city,
      remote_avatar_url: grandma_avatars.sample,
      user: newuser,
      skills: Skill.all.sample(rand(0..6))
      )
    grandma.save!
      # usercount = rand(User.count)
      # grandmacount = rand(Grandma.count)
      rand(10..15).times do
        booking = Booking.new(
          user: User.last(2).first,
          grandma: grandma,
          start_date: rand_date(30..60),
          end_date: rand_date(29)
          )
        booking.save!

      end

    end

  end

  30.times do
   review = Review.new(
    content: Faker::GreekPhilosophers.quote,
    score: rand(1..5),
    booking_id: Booking.all.sample.id
    )

   review.save!
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
