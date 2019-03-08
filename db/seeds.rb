# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
User.destroy_all

Book.create(title: "Sorcerer's Stone", author: 'J.K. Rowling')
Book.create(title: "Prisoner of Azkaban", author: 'J.K. Rowling')
Book.create(title: "Chamber of Secrets", author: 'J.K. Rowling')

john = User.create(username: "john")
ray = User.create(username: "ray")
steph = User.create(username: "steph")

john.books << Book.all
ray.books << Book.first
steph.books << Book.last
