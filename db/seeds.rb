# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "George", password: "123456", email: "george@gmail.com", role: User.roles[:admin])
User.create(name: "Robert", password: "123456", email: "robert@gmail.com", role: User.roles[:user])
User.create(name: "Lee", password: "123456", email: "lee@gmail.com", role: User.roles[:user])

