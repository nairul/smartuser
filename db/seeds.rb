# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
App.destroy_all

gmail = App.create({
  name: "Gmail",
  username: "username",
  password: "password"
})

amazon = App.create({
  name: "Amazon",
  username: "username",
  password: "password"
})

bank_of_america = App.create({
  name: "Bank of America",
  username: "username",
  password: "password"
})

twitter = App.create({
  name: "Twitter",
  username: "username",
  password: "password"
})

facebook = App.create({
  name: "Facebook",
  username: "username",
  password: "password"
})

netflix = App.create({
  name: "Netflix",
  username: "username",
  password: "password"
})