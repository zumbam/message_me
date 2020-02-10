# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(username: "test", password: "password")
u2 = User.create(username: "test1", password: "password")
u3 = User.create(username: "test2", password: "password")
u4 = User.create(username: "test3", password: "password")
User.create(username: "test4", password: "password")

Message.create(body: "Hey test2, how are u", user: u1)
Message.create(body: "I am fine what\'s about u test3", user: u2)
Message.create(body: "I am also fine!", user: u3)
Message.create(body: "Hey everybody. Cool stuff happens here!", user: u4)
Message.create(body: "Hey test4. That\s what she said :)", user: u1)
