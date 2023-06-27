# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "-------------- delete all --------------"
User.destroy_all
# Teacher.destroy_all
# Course.destroy_all
# Course.destroy_all
# Enrollment.destroy_all
# Review.destroy_all

puts "-------------- create students --------------"
john = User.create(first_name: 'john', last_name: "pool", email: "john.pool@gmail.fr", password: "rerere", phone_number: "343 123 4321")
jack = User.create(first_name: 'jack', last_name: "hash", email: "jack.hash@gmail.fr", password: "rerere", phone_number: "923 245 3531")
joe = User.create(first_name: 'joe', last_name: "rails", email: "joe.rails@gmail.com", password: "rerere", phone_number: "453 165 4311")
jim = User.create(first_name: 'jim', last_name: "ruby", email: "jim.ruby@gmail.com", password: "rerere", phone_number: "313 543 1345")
