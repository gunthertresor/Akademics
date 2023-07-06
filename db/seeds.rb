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
george = User.create(first_name: 'George', last_name: "Davis", email: "george.davis@example.com", password: "rerere", phone_number: "678 901 2345", address: "678 Cedar Court", status: "teacher", url_avatar:"https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80")
megan = User.create(first_name: 'Megan', last_name: "Miller", email: "megan.miller@example.com", password: "rerere", phone_number: "789 012 3456", address: "901 Spruce Street", status: "teacher", url_avatar:"https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1480&q=80")
steve = User.create(first_name: 'Steve', last_name: "Wilson", email: "steve.wilson@example.com", password: "rerere", phone_number: "890 123 4567", address: "234 Aspen Avenue", status: "teacher", url_avatar:"https://images.unsplash.com/photo-1590086782957-93c06ef21604?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80")
jim = User.create(first_name: 'jim', last_name: "gordon", email: "jim.gordon@example.com", password: "rerere", phone_number: "890 123 4567", address: "233 Aspen Avenue", status: "teacher", url_avatar:"https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=989&q=80")
joseph = User.create(first_name: 'joseph', last_name: "washington", email: "joseph.washington@example.com", password: "rerere", phone_number: "890 123 4567", address: "235 Aspen Avenue", status: "teacher", url_avatar:"https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80")

puts "-------------- create Courses --------------"
course_george1 = Course.create(user_id: george.id, title: "Shakespearean literature", name: "Shakespeare's plays and sonnets", category: "literature", description: "A comprehensive study of Shakespeare's work.", content: "Shakespeare's literature is about drama, conflict...
    Shakespeare’s perception of a crisis in public norms and private belief became the overriding concern of the drama until the closing of the theatres in 1642. The prevailing manner of the playwrights who succeeded him was realistic, satirical, and antiromantic, and their plays focused predominantly on those two symbolic locations, the city and the court, with their typical activities, the pursuit of wealth and power. “Riches and glory,” wrote Sir Walter Raleigh, “Machiavel’s two marks to shoot at,” had become the universal aims, and this situation was addressed by city comedies and tragedies of state. Increasingly, it was on the stages that the rethinking of early Stuart assumptions took place.
    On the one hand, in the works of Thomas Heywood, Thomas Dekker, John Day, Samuel Rowley, and others, the old tradition of festive comedy was reoriented toward the celebration of confidence in the dynamically expanding commercial metropolis. Heywood claimed to have been involved in some 200 plays, and they include fantastic adventures starring citizen heroes, spirited, patriotic, and inclined to a leveling attitude in social matters. His masterpiece, A Woman Killed with Kindness (1603), is a middle-class tragedy. Dekker was a kindred spirit, best seen in his Shoemakers’ Holiday (1599), a celebration of citizen brotherliness and Dick Whittington-like success; the play nevertheless faces squarely up to the hardships of work, thrift, and the contempt of the great. On the other hand, the very industriousness that the likes of Heywood viewed with civic pride became in the hands of Ben Jonson, George Chapman, John Marston, and Thomas Middleton a sign of self-seeking, avarice, and anarchy, symptomatic of the sicknesses in society at large.
    ", price: 50, grade: 1, rating: 1, url_course:"https://www.youtube.com/watch?v=your_url")
course_george2 = Course.create(user_id: george.id, title: "Modernist art", name: "Exploring the modernists", category: "art", description: "An exploration of modernist literature.", content: "Modernist literature is about the self, perception...", price: 40, grade: 2, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_megan1 = Course.create(user_id: megan.id, title: "Calculus 101", name: "Introduction to calculus", category: "mathematics", description: "An introductory course in calculus.", content: "Calculus is about change, rates...", price: 100, grade: 5, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_jim1 = Course.create(user_id: jim.id, title: "learn chimie", name: "Learn modern chemistry", category: "chemistry", description: "How create new element", content: "introduction of modern chemistry...", price: 200, grade: 4, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_joseph1 = Course.create(user_id: joseph.id, title: "space geomety", name: "How does spacetime work?", category: "physics", description: "A course how space-time work on global scale", content: "The Block Universe idea, representing spacetime as a fixed whole, suggests
    the flow of time is an illusion: the entire universe just is, with no special meaning
    attached to the present time. This paper points out that this view, in essence
    represented by usual space-time diagrams, is based on time-reversible microphysical
    laws, which fail to capture essential features of the time-irreversible macro-physical
    behaviour and the development of emergent complex systems, including life, which
    exist in the real universe. When these are taken into account, the unchanging block
    universe view of spacetime is best replaced by an evolving block universe which
    extends as time evolves, with the potential of the future continually becoming the
    certainty of the past; spacetime itself evolves, as do the entities within it. However this
    time evolution is not related to any preferred surfaces in spacetime; rather it is
    associated with the evolution of proper time along families of world lines.", price: 200, grade: 4, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_joseph2 = Course.create(user_id: joseph.id, title: "engineering", name: "The art of engineering", category: "engineering", description: "A course engineering", content: "engineering is about...", price: 200, grade: 4, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_joseph3 = Course.create(user_id: joseph.id, title: "robotic", name: "Robotic initiation", category: "robotic", description: "A course engineering", content: "engineering is about...", price: 200, grade: 4, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_steve1 = Course.create(user_id: steve.id, title: "Creative writing", name: "Writing creative fiction", category: "literature", description: "A course on writing creative fiction.", content: "Creative writing is about imagination, expression...", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")

course_steve2 = Course.create(user_id: steve.id, title: "Writing like a boss", name: "Writing creative fiction", category: "literature", description: "A course on writing creative fiction.", content: "Creative writing is about imagination, expression...", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_joseph4 = Course.create(user_id: joseph.id, title: "Univers", name: "Movement is like nothing", category: "physics", description: "How Newton discover gravoty", content: "Creative writing is about imagination, expression...", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_jim2 = Course.create(user_id: jim.id, title: "New element", name: "How create element", category: "chemistry", description: "How element is created in univers", content: "Creative writing is about imagination, expression...", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_megan2 = Course.create(user_id: megan.id, title: "Linear algebra", name: "the study of master", category: "mathematics", description: "A art of mathematics", content: "Creative writing is about imagination, expression...", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_george3 = Course.create(user_id: george.id, title: "Classic art", name: "The art of painting", category: "art", description: "A course on painting like bob ross", content: "Creative writing is about imagination, expression...", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_steve3 = Course.create(user_id: steve.id, title: "Creative writing numero 2", name: "Writing creative fiction n.2", category: "literature", description: "The next of writing creative fiction.", content: "Creative writing is about imagination, expression...", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")


puts "-------------- create Classe --------------"
class1 = Classe.create(course_id: course_george1.id, name: "Shakespearean literature class", max_people: 20, start_date: Time.now - 4.days, end_date: Time.now - 4.days)
class3 = Classe.create(course_id: course_george1.id, name: "Shakespearean literature class", max_people: 20, start_date: Time.now - 3.hours, end_date: Time.now - 4.hours)
class3 = Classe.create(course_id: course_george1.id, name: "Shakespearean literature class", max_people: 20, start_date: Time.now + 4.days, end_date: Time.now + 4.days)
class3 = Classe.create(course_id: course_george2.id, name: "Modernist literature class", max_people: 20, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class2 = Classe.create(course_id: course_megan1.id, name: "Calculus 101 class", max_people: 20, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class4 = Classe.create(course_id: course_jim1.id, name: "learn chimie class", max_people: 20, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class5 = Classe.create(course_id: course_jim1.id, name: "learn chimie class", max_people: 20, start_date: Time.now - 2.days, end_date: Time.now - 2.days)
class6 = Classe.create(course_id: course_joseph1.id, name: "space geomety chapiter 1", max_people: 20, start_date: Time.now - 3.hours, end_date: Time.now - 4.hours)


class7 = Classe.create(course_id: course_joseph4.id, name: "Movement is like nothing class", max_people: 20, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class8 = Classe.create(course_id: course_jim2.id, name: "New element class", max_people: 20, start_date: Time.now + 4.hours, end_date: Time.now + 5.hours)
class9 = Classe.create(course_id: course_joseph3.id, name: "robotic class", max_people: 30, start_date: Time.now + 2.hours, end_date: Time.now + 3.hours)
class10 = Classe.create(course_id: course_joseph3.id, name: "robotic class", max_people: 30, start_date: Time.now + 2.days + 2.hours, end_date: Time.now + 2.days + 3.hours)

class12 = Classe.create(course_id: course_joseph1.id, name: "space geomety chapiter 2", max_people: 30, start_date: Time.now + 2.days + 2.hours, end_date: Time.now + 2.days + 3.hours)
class122 = Classe.create(course_id: course_joseph1.id, name: "space geomety chapiter 2", max_people: 30, start_date: Time.now + 3.days + 2.hours, end_date: Time.now + 3.days + 3.hours)
class13 = Classe.create(course_id: course_jim1.id, name: "Introduction chimie for teacher", max_people: 30, start_date: Time.now + 2.days + 2.hours, end_date: Time.now + 2.days + 3.hours)


puts "-------------- create Enrollment --------------"
enrollment1 = Enrollment.create(user_id: john.id, classe_id: class1.id, cancelled: false)
enrollment2 = Enrollment.create(user_id: susan.id, classe_id: class1.id, cancelled: false)
enrollment3 = Enrollment.create(user_id: john.id, classe_id: class2.id, cancelled: false)
enrollment4 = Enrollment.create(user_id: bob.id, classe_id: class2.id, cancelled: false)
enrollment5 = Enrollment.create(user_id: george.id, classe_id: class4.id, cancelled: false)
enrollment6 = Enrollment.create(user_id: george.id, classe_id: class5.id, cancelled: false)
enrollment6 = Enrollment.create(user_id: george.id, classe_id: class6.id, cancelled: false)

Enrollment.create(user_id: john.id, classe_id: class4.id, cancelled: false)
Enrollment.create(user_id: john.id, classe_id: class5.id, cancelled: false)
Enrollment.create(user_id: john.id, classe_id: class6.id, cancelled: false)
puts "-------------- create Review --------------"

# John's reviews
Review.create(user_id: john.id, course_id: course_george1.id, rating: 5, comment: "A very enlightening course! I've learned so much.")
Review.create(user_id: john.id, course_id: course_george2.id, rating: 5, comment: "I appreciated the deep dive into modern literature.")
Review.create(user_id: john.id, course_id: course_megan1.id, rating: 5, comment: "Fantastic intro to calculus, really clarified a lot for me.")
Review.create(user_id: john.id, course_id: course_steve1.id, rating: 4, comment: "A wonderful exploration of creative writing.")

# Susan's reviews
Review.create(user_id: susan.id, course_id: course_george1.id, rating: 4, comment: "A good overview of Shakespeare's work.")
Review.create(user_id: susan.id, course_id: course_george2.id, rating: 3, comment: "I enjoyed the exploration of modernist literature.")
Review.create(user_id: susan.id, course_id: course_megan1.id, rating: 5, comment: "This course really helped me get to grips with calculus.")
Review.create(user_id: susan.id, course_id: course_steve1.id, rating: 4, comment: "I'm now a lot more confident in my creative writing.")

# Bob's reviews
Review.create(user_id: bob.id, course_id: course_george1.id, rating: 4, comment: "I enjoyed learning about Shakespeare's literature.")
Review.create(user_id: bob.id, course_id: course_george2.id, rating: 4, comment: "Modernist literature is fascinating, great course.")
Review.create(user_id: bob.id, course_id: course_megan1.id, rating: 4, comment: "Calculus made easy, great job!")
Review.create(user_id: bob.id, course_id: course_steve1.id, rating: 3, comment: "I loved the creative writing course.")

# Other users' reviews
Review.create(user_id: linda.id, course_id: course_george1.id, rating: 5, comment: "Decent course, but could be more engaging.")
Review.create(user_id: linda.id, course_id: course_joseph2.id, rating: 3, comment: "Decent course, but could be more engaging.")
Review.create(user_id: amy.id, course_id: course_megan1.id, rating: 5, comment: "Great course. I really appreciate the teacher's approach.")
Review.create(user_id: amy.id, course_id: course_joseph1.id, rating: 5, comment: "I'm Amy, Joseph course is great. I really appreciate the teacher's approach.")
Review.create(user_id: megan.id, course_id: course_joseph1.id, rating: 5, comment: "I'm megan, Joseph course is great. I really appreciate the teacher's approach.")
Review.create(user_id: amy.id, course_id: course_jim1.id, rating: 5, comment: "I'm Amy and Jim course I really appreciate the teacher's approach.")
Review.create(user_id: amy.id, course_id: course_joseph3.id, rating: 5, comment: "I'm Amy and Joseph course 3 is great. I really appreciate the teacher's approach.")
Review.create(user_id: george.id, course_id: course_joseph3.id, rating: 4, comment: "Enjoyed the course, very enlightening.")
Review.create(user_id: megan.id, course_id: course_george2.id, rating: 5, comment: "Excellent course, really helped my understanding.")
Review.create(user_id: steve.id, course_id: course_megan1.id, rating: 3, comment: "Good course, but some parts were a bit too complex.")
Review.create(user_id: linda.id, course_id: course_steve1.id, rating: 5, comment: "Decent course, but could be more engaging.")

puts "-------------- create all ok --------------"
