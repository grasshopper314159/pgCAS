# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Travis", role: User.roles[:admin], email: "tw247551e")
User.create(name: "Nate", role: User.roles[:admin], email: "nj101138")
User.create(name: "Test User", role: User.roles[:user], email: "cs999999e")

