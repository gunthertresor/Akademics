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
studentbart = User.new(first_name: "bart", last_name: "simpson", password: "rerere", phone_number: "089 983 2183", email: "bart.simpson@gmail.com", address: "stringfield")
studenthomer = User.new(first_name: "homer", last_name: "simpson", password: "rerere", phone_number: "089 983 2183", email: "homer.simpson@gmail.com", address: "stringfield")
studentmarge = User.new(first_name: "marge", last_name: "simpson", password: "rerere", phone_number: "089 983 2183", email: "marge.simpson@gmail.com", address: "stringfield")
studentlisa = User.new(first_name: "lisa", last_name: "simpson", phone_number: "089 983 2183", email: "lisa.simpson@gmail.com", address: "stringfield")
studentmaggie = User.new(first_name: "maggie", last_name: "simpson", phone_number: "089 983 2183", email: "maggie.simpson@gmail.com", address: "stringfield")
