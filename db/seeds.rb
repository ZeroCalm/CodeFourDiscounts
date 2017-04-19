# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Location.destroy_all

locations = [
  {location_name:"Ikes Sandwiches", location_address: "225 Goheen Cir.", location_description: "We Sell Sandiwiches"},
  # {location_name:"Oakland", location_address: "asdfsdf", location_description: "This wilasdfsdfl be a description", lat: 37.8044444, lng: -122.2697222},
  # {location_name:"Emeryville", location_address: "adf", location_description: "This will basdfsdption", lat: 37.831318, lng: -122.285248},
  # {location_name:"Burger King", location_address: "1 Happy Street", location_description: "Thasdfon", lat: 37.8716667, lng:  -122.2716667}


  ]

users = [
  {user_name:"Joe", job_function:"EMT", email:"admin@admin.com", password:"asdfjkl", admin: true}

  ]


User.create(users)
Location.create(locations)
