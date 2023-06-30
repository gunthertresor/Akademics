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
john = User.create(first_name: 'John', last_name: "Doe", email: "john.doe@example.com", password: "rerere", phone_number: "123 456 7890", address: "123 Elm Street", status: "student")
susan = User.create(first_name: 'Susan', last_name: "Smith", email: "susan.smith@example.com", password: "rerere", phone_number: "234 567 8901", address: "456 Oak Avenue", status: "student")
bob = User.create(first_name: 'Bob', last_name: "Johnson", email: "bob.johnson@example.com", password: "rerere", phone_number: "345 678 9012", address: "789 Pine Lane", status: "student")
linda = User.create(first_name: 'Linda', last_name: "Williams", email: "linda.williams@example.com", password: "rerere", phone_number: "456 789 0123", address: "012 Maple Drive", status: "student")
amy = User.create(first_name: 'Amy', last_name: "Brown", email: "amy.brown@example.com", password: "rerere", phone_number: "567 890 1234", address: "345 Birch Boulevard", status: "student")
george = User.create(first_name: 'George', last_name: "Davis", email: "george.davis@example.com", password: "rerere", phone_number: "678 901 2345", address: "678 Cedar Court", status: "teacher")
megan = User.create(first_name: 'Megan', last_name: "Miller", email: "megan.miller@example.com", password: "rerere", phone_number: "789 012 3456", address: "901 Spruce Street", status: "teacher")
steve = User.create(first_name: 'Steve', last_name: "Wilson", email: "steve.wilson@example.com", password: "rerere", phone_number: "890 123 4567", address: "234 Aspen Avenue", status: "teacher")

puts "-------------- create Courses --------------"
course_george1 = Course.create(user_id: george.id, title: "Shakespearean literature", name: "Shakespeare's plays and sonnets", category: "literature", description: "A comprehensive study of Shakespeare's work.", content: "Shakespeare's literature is about drama, conflict...", price: 50, grade: 1, rating: 1, url_course:"https://www.youtube.com/watch?v=your_url")
course_george2 = Course.create(user_id: george.id, title: "Modernist literature", name: "Exploring the modernists", category: "literature", description: "An exploration of modernist literature.", content: "Modernist literature is about the self, perception...", price: 40, grade: 2, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_megan1 = Course.create(user_id: megan.id, title: "Calculus 101", name: "Introduction to calculus", category: "mathematics", description: "An introductory course in calculus.", content: "Calculus is about change, rates...", price: 100, grade: 5, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_steve1 = Course.create(user_id: steve.id, title: "Creative writing", name: "Writing creative fiction", category: "literature", description: "A course on writing creative fiction.", content: "Creative writing is about imagination, expression...", price: 200, grade: 4, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")

puts "-------------- create Classe --------------"
class1 = Classe.create(course_id: course_george1.id, name: "Shakespearean literature class", max_people: 20, class_date: Time.now + 3.days, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class3 = Classe.create(course_id: course_george1.id, name: "Shakespearean literature class", max_people: 20, class_date: Time.now + 4.days, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class3 = Classe.create(course_id: course_george1.id, name: "Shakespearean literature class", max_people: 20, class_date: Time.now + 5.days, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class3 = Classe.create(course_id: course_george2.id, name: "Modernist literature class", max_people: 20, class_date: Time.now + 5.days, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class2 = Classe.create(course_id: course_megan1.id, name: "Calculus 101 class", max_people: 20, class_date: Time.now + 10.days, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class2 = Classe.create(course_id: course_megan1.id, name: "Calculus 101 class", max_people: 20, class_date: Time.now + 10.days, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class2 = Classe.create(course_id: course_megan1.id, name: "Calculus 101 class", max_people: 20, class_date: Time.now + 10.days, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class2 = Classe.create(course_id: course_steve1.id, name: "Creative writing class", max_people: 20, class_date: Time.now + 10.days, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)

puts "-------------- create Enrollment --------------"
enrollment1 = Enrollment.create(user_id: john.id, classe_id: class1.id, cancelled: false)
enrollment2 = Enrollment.create(user_id: susan.id, classe_id: class1.id, cancelled: false)
enrollment3 = Enrollment.create(user_id: john.id, classe_id: class2.id, cancelled: false)
enrollment4 = Enrollment.create(user_id: bob.id, classe_id: class2.id, cancelled: false)

puts "-------------- create Review --------------"
Review.create(user_id: john.id, course_id: course_george1.id, rating: 5)
Review.create(user_id: susan.id, course_id: course_george1.id, rating: 4)
Review.create(user_id: linda.id, course_id: course_george1.id, rating: 3)
Review.create(user_id: bob.id, course_id: course_george2.id, rating: 5)
Review.create(user_id: susan.id, course_id: course_george2.id, rating: 1)
Review.create(user_id: amy.id, course_id: course_megan1.id, rating: 5)

puts "-------------- create all ok --------------"
