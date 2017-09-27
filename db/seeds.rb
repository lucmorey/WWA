# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(name: "Joe", email: "Joe@gmail.com", city: "Venice", password: "bubbles")
co = Callout.create(name:"Barista", body:"Real crazy", city: "Venice", tag: "people", user: u1)
