# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "-------------- delete all --------------"
Review.destroy_all
Enrollment.destroy_all
Classe.destroy_all
Course.destroy_all
User.destroy_all

puts "-------------- create Users --------------"
bart = User.create(first_name: 'bart', last_name: "simpson", email: "bart.simpson@gmail.fr", password: "rerere", phone_number: "343 123 4321", address: "stringfield", status: "student")
lisa = User.create(first_name: 'lisa', last_name: "simpson", email: "lisa.simpson@gmail.fr", password: "rerere", phone_number: "923 245 3531", address: "stringfield", status: "student")
homer = User.create(first_name: 'homer', last_name: "simpson", email: "homer.simpson@gmail.fr", password: "rerere", phone_number: "923 245 3531", address: "stringfield", status: "student")
marge = User.create(first_name: 'marge', last_name: "simpson", email: "marge.simpson@gmail.com", password: "rerere", phone_number: "453 165 4311", address: "stringfield", status: "student")
maggy = User.create(first_name: 'maggy', last_name: "simpson", email: "maggy.simpson@gmail.com", password: "rerere", phone_number: "313 543 1345", address: "stringfield", status: "student")
abraham = User.create(first_name: 'abraham', last_name: "simpson", email: "abraham.simpson@gmail.com", password: "rerere", phone_number: "313 543 1345", address: "stringfield", status: "teacher")
mona = User.create(first_name: 'mona', last_name: "simpson", email: "mona.simpson@gmail.com", password: "rerere", phone_number: "313 543 1345", address: "stringfield", status: "teacher")
clancy = User.create(first_name: 'clancy', last_name: "simpson", email: "clancy.simpson@gmail.com", password: "rerere", phone_number: "313 543 1345", address: "stringfield", status: "teacher")

puts "-------------- create Courses --------------"
coursabraham1 = Course.create(user_id: abraham.id, title: "square goemetry", name: "goemetry course", category: "mathematiques", description: "study of square goemetry", content: "square goemetry is about angle...", price: 50, grade: 1)
coursabraham2 = Course.create(user_id: abraham.id, title: "triangle goemetry", name: "triangle course", category: "mathematiques", description: "study of triangle goemetry", content: "triangle goemetry is about angle...", price: 40, grade: 2)
coursmona1 = Course.create(user_id: mona.id, title: "gravity", name: "gravity physics", category: "physics", description: "study of gravity geometry", content: "gravity physics is about...", price: 100, grade: 5)
coursclancy1 = Course.create(user_id: clancy.id, title: "english first level", name: "english verb", category: "lang", description: "english courses about verb", content: "english is about...", price: 200, grade: 4)

puts "-------------- create Classe --------------"
class1 = Classe.create(course_id: coursabraham1.id, name: "square goemetry class", max_people: 20)
class2 = Classe.create(course_id: coursabraham2.id, name: "triangle goemetry class", max_people: 20)

puts "-------------- create Enrollment --------------"
enrollment1 = Enrollment.create(user_id: bart.id, classe_id: class1.id, cancelled: false)
enrollment2 = Enrollment.create(user_id: lisa.id, classe_id: class1.id, cancelled: false)
enrollment3 = Enrollment.create(user_id: bart.id, classe_id: class2.id, cancelled: false)

puts "-------------- create Review --------------"
Review.create(user_id: bart.id, enrollment_id: enrollment1.id, rating: 5)
Review.create(user_id: lisa.id, enrollment_id: enrollment2.id, rating: 4)

puts "-------------- create all ok --------------"
