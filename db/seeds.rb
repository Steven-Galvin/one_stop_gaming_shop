# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Review.destroy_all
# User.destroy_all

# admin = User.create!(username: "Kalsifer",
#                     name: "Admin",
#                     sex: "Other",
#                     dob: "1993-11-07 00:00:00 UTC",
#                     avatar: File.new("#{Rails.root}/public/images/medium/missing.png"),
#                     email: "admin@admin.com",
#                     password: "asdfas",
#                     password_confirmation: "asdfas",
#                     admin: true,
#                     id: 1
#                     )
#
# user1 = User.create!(username: "Vulpixies",
#                     name: "User 1",
#                     sex: "Female",
#                     dob: "1994-12-24 00:00:00 UTC",
#                     avatar: File.new("#{Rails.root}/public/images/medium/missing.png"),
#                     email: "user1@user1.com",
#                     password: "asdfas",
#                     password_confirmation: "asdfas",
#                     admin: false,
#                     id: 2
#                     )
#
# user2 = User.create!(username: "Luigi290",
#                      name: "User 2",
#                      sex: "Male",
#                      dob: "1995-1-2 00:00:00 UTC",
#                      avatar: File.new("#{Rails.root}/public/images/medium/missing.png"),
#                      email: "user2@user2.com",
#                      password: "asdfas",
#                      password_confirmation: "asdfas",
#                      admin: false,
#                      id: 3
#                      )

5.times do |index|
  myProduct = Product.create!(
                 name: Faker::Zelda.game,
                 game_type: 'Video Game',
                 cost: rand(5..60),
                 description: Faker::HitchhikersGuideToTheGalaxy.quote,
                 genre: 'Action Adventure',
                 id: index + 1
                 )
                 rand(2..10).times do |index2|
                   myProduct.reviews.create!(
                   author: Faker::HitchhikersGuideToTheGalaxy.character,
                   body: Faker::HitchhikersGuideToTheGalaxy.quote
                   )
                 end
end


p "Created #{Product.count} Products"
# p "Created #{User.count} Users"
p "Created #{Review.count} Reviews"
