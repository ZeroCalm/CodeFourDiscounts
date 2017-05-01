# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Location.destroy_all

#Just to ensure any articles created are destoyed also
Article.destroy_all

locations = [
  {location_name:"Ike's Sandwiches", location_address: "2172 Shattuck Ave, Berkeley, CA", location_description: "25% of Sandwiches", lat: 37.869849, lng: -122.268379},
  {location_name:"Chipotle", location_address: "8460 Edgewater Dr, Oakland, CA", location_description: "20% off Meals", lat: 37.737934, lng: -122.197464},
  {location_name:"Hawaiin BBQ", location_address: "25175 Sanata Clara St. #B Hayward, CA", location_description: "15% off Meals", lat: 37.648331, lng: -122.0899},
  {location_name:"Kingston 11", location_address: "2270 Telegraph Ave. Oakland", location_description: "10% off Special", lat: 37.81229, lng:  -122.26858}


  ]

users = [
  {user_name:"Joe", job_function:"EMT", email:"admin@admin.com", password:"password", admin: true},
  {user_name:"Tom", job_function:"Paramedic", email:"a@b.com", password:"password", admin: false},
  {user_name:"Frank", job_function:"EMT", email:"a@c.com", password:"password", admin: false},
  {user_name:"Marcus", job_function:"EMT", email:"a@d.com", password:"password", admin: false}
  ]

# articles = [
#   {user_id: 40, location_id: 18, title: "THIS IS THE TITLE", body: "And this would be the body"}
# ]

User.create(users)
Location.create(locations)
