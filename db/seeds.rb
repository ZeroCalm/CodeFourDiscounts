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
  {location_name:"Location 1", location_address: "1 Happy Street", location_description: "Thiasdfion", lat:3.1, lng: 1.5},
  {location_name:"Ikes Sandwiches", location_address: "asdfsdf", location_description: "This wilasdfsdfl be a description", lat:3.1, lng: 1.5},
  {location_name:"McDonalds", location_address: "adf", location_description: "This will basdfsdption", lat:3934.8, lng: 1.5},
  {location_name:"Burger King", location_address: "1 Happy Street", location_description: "Thasdfon", lat:33.2, lng: 9834.345}


  ]

users = [
  {user_name:"Joe", job_function:"EMT", email:"admin@admin.com", password:"asdfjkl", admin: true}
  ]


User.create(users)
Location.create(locations)
