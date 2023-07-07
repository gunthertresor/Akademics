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
john = User.create(first_name: 'John', last_name: "Doe", email: "john.doe@example.com", password: "rerere", phone_number: "123 456 7890", address: "123 Elm Street", status: "student", url_avatar:"https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80")
susan = User.create(first_name: 'Susan', last_name: "Smith", email: "susan.smith@example.com", password: "rerere", phone_number: "234 567 8901", address: "456 Oak Avenue", status: "student")
bob = User.create(first_name: 'Bob', last_name: "Johnson", email: "bob.johnson@example.com", password: "rerere", phone_number: "345 678 9012", address: "789 Pine Lane", status: "student")
linda = User.create(first_name: 'Linda', last_name: "Williams", email: "linda.williams@example.com", password: "rerere", phone_number: "456 789 0123", address: "012 Maple Drive", status: "student")
amy = User.create(first_name: 'Amy', last_name: "Brown", email: "amy.brown@example.com", password: "rerere", phone_number: "567 890 1234", address: "345 Birch Boulevard", status: "student")
george = User.create(first_name: 'George', last_name: "Davis", email: "george.davis@example.com", password: "rerere", phone_number: "678 901 2345", address: "678 Cedar Court", status: "teacher", url_avatar:"https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80")
megan = User.create(first_name: 'Megan', last_name: "Miller", email: "megan.miller@example.com", password: "rerere", phone_number: "789 012 3456", address: "901 Spruce Street", status: "teacher", url_avatar:"https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1480&q=80")
steve = User.create(first_name: 'Steve', last_name: "Wilson", email: "steve.wilson@example.com", password: "rerere", phone_number: "890 123 4567", address: "234 Aspen Avenue", status: "teacher", url_avatar:"https://images.unsplash.com/photo-1590086782957-93c06ef21604?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80")
jim = User.create(first_name: 'Jim', last_name: "Gordon", email: "jim.gordon@example.com", password: "rerere", phone_number: "890 123 4567", address: "233 Aspen Avenue", status: "teacher", url_avatar:"https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=989&q=80")
joseph = User.create(first_name: 'joseph', last_name: "washington", email: "joseph.washington@example.com", password: "rerere", phone_number: "890 123 4567", address: "235 Aspen Avenue", status: "teacher", url_avatar:"https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80")

puts "-------------- create Courses --------------"
course_george1 = Course.create(user_id: george.id, title: "Shakespearean literature", name: "Shakespeare's plays and sonnets", category: "literature", description: "A comprehensive study of Shakespeare's work.", content: "
    Shakespeare's literature is about drama, conflict...
    Shakespeare’s perception of a crisis in public norms and private belief became the overriding concern of the drama until the closing of the theatres in 1642. The prevailing manner of the playwrights who succeeded him was realistic, satirical, and antiromantic, and their plays focused predominantly on those two symbolic locations, the city and the court, with their typical activities, the pursuit of wealth and power. “Riches and glory,” wrote Sir Walter Raleigh, “Machiavel’s two marks to shoot at,” had become the universal aims, and this situation was addressed by city comedies and tragedies of state. Increasingly, it was on the stages that the rethinking of early Stuart assumptions took place.
    On the one hand, in the works of Thomas Heywood, Thomas Dekker, John Day, Samuel Rowley, and others, the old tradition of festive comedy was reoriented toward the celebration of confidence in the dynamically expanding commercial metropolis. Heywood claimed to have been involved in some 200 plays, and they include fantastic adventures starring citizen heroes, spirited, patriotic, and inclined to a leveling attitude in social matters. His masterpiece, A Woman Killed with Kindness (1603), is a middle-class tragedy. Dekker was a kindred spirit, best seen in his Shoemakers’ Holiday (1599), a celebration of citizen brotherliness and Dick Whittington-like success; the play nevertheless faces squarely up to the hardships of work, thrift, and the contempt of the great. On the other hand, the very industriousness that the likes of Heywood viewed with civic pride became in the hands of Ben Jonson, George Chapman, John Marston, and Thomas Middleton a sign of self-seeking, avarice, and anarchy, symptomatic of the sicknesses in society at large.
    ", price: 50, grade: 1, rating: 1, url_course:"https://www.youtube.com/watch?v=your_url")
course_george2 = Course.create(user_id: george.id, title: "Modernist art", name: "Exploring the modernists", category: "art", description: "Art in our history", content: "
    The terms modernism and modern art are generally used to describe the succession of art movements that critics and historians have identified since the realism of Gustav Courbet and culminating in abstract art and its developments in the 1960s.
    Although many different styles are encompassed by the term, there are certain underlying principles that define modernist art: A rejection of history and conservative values (such as realistic depiction of subjects); innovation and experimentation with form (the shapes, colours and lines that make up the work) with a tendency to abstraction; and an emphasis on materials, techniques and processes. Modernism has also been driven by various social and political agendas. These were often utopian, and modernism was in general associated with ideal visions of human life and society and a belief in progress.
    By the 1960s modernism had become a dominant idea of art, and a particularly narrow theory of modernist painting had been formulated by the highly influential American critic Clement Greenberg. A reaction then took place which was quickly identified as postmodernism.
    Modernist literature is about the self, perception...
    ", price: 40, grade: 2, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_megan1 = Course.create(user_id: megan.id, title: "Calculus 101", name: "Introduction to calculus", category: "mathematics", description: "An introductory course in calculus.", content: "
    Calculus is concerned with two basic operations, differentiation and integration, and is a tool used by engineers to determine such quantities as rates of change and areas; in fact, calculus is the mathematical ‘backbone’ for dealing with problems where variables change with time or some other reference variable and a basic understanding of calculus is essential for further study and the development of confidence in solving practical engineering problems. This will become evident in the next chapter where physical systems will be modelled and the use of ‘rates of change’ equations (called differential equations) will allow the physical system to be represented, an analysis made and a solution formed under defined conditions. This chapter is an introduction to the techniques of calculus and a consideration of some of their engineering applications. The topic continues in the next chapter with a discussion of the use of differential equations to represent physical systems and their solution for various inputs.
    ", price: 100, grade: 5, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_jim1 = Course.create(user_id: jim.id, title: "Learn chimie", name: "Learn modern chemistry", category: "chemistry", description: "How create new element", content: "
    Imagine the confusion among chemists during the middle of the nineteenth century.
By 1860, more than 60 elements had been discovered. Chemists had to learn
the properties of these elements as well as those of the many compounds that
they formed—a difficult task. And to make matters worse, there was no method
for accurately determining an element’s atomic mass or the number of atoms of
an element in a particular chemical compound. Different chemists used different
atomic masses for the same elements, resulting in different compositions being
proposed for the same compounds. This made it nearly impossible for one chemist
to understand the results of another.
In September 1860, a group of chemists assembled at the First International
Congress of Chemists in Karlsruhe, Germany, to settle the issue of atomic mass
as well as some other matters that were making communication difficult. At the
Congress, Italian chemist Stanislao Cannizzaro presented a convincing method for
accurately measuring the relative masses of atoms. Cannizzaro’s method enabled
chemists to agree on standard values for atomic mass and initiated a search for
relationships between atomic mass and other properties of the elements.
    ", price: 200, grade: 4, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_joseph1 = Course.create(user_id: joseph.id, title: "Space geometry", name: "How does spacetime work?", category: "physics", description: "A course how space-time work on global scale", content: "The Block Universe idea, representing spacetime as a fixed whole, suggests
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
    associated with the evolution of proper time along families of world lines.
    ", price: 200, grade: 4, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_joseph2 = Course.create(user_id: joseph.id, title: "Engineering", name: "The art of engineering", category: "engineering", description: "A course engineering", content: "
    In Part One of this book, we will introduce you to the engineering profession. Engineers are problem
    solvers. They have a good grasp of fundamental physical and chemical laws and mathematics and
    apply these laws and principles to design, develop, test, and supervise the manufacture of millions
    of products and services. Engineers, regardless of their background, follow certain steps when
    designing the products and services we use in our everyday lives. Successful engineers possess
    good communication skills and are team players. Ethics plays a very important role in engineering.
    As eloquently stated by the National Society of Professional Engineers (NSPE) code of ethics, “Engineering is an important and learned profession. As members of this profession, engineers are
    expected to exhibit the highest standards of honesty and integrity. Engineering has a direct and vital
    impact on the quality of life for all people. Accordingly, the services provided by engineers require
    honesty, impartiality, fairness and equity, and must be dedicated to the protection of the public health,
    safety, and welfare. Engineers must perform under a standard of professional behavior which requires
    adherence to the highest principles of ethical conduct. In the next five chapters, we will introduce
    you to the engineering profession, how to prepare for an exciting engineering career, the design process, engineering communication, and ethics.
    ", price: 200, grade: 4, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_joseph3 = Course.create(user_id: joseph.id, title: "Dynamique robotic", name: "Robotic initiation", category: "robotic", description: "A course engineering", content: "
    A microcontroller is essentially an inexpensive single­chip computer. Single
    chip means the entire computer system lies within the confines of a sliver of
    silicon encapsulated inside the plastic housing of an integrated circuit. The
    microcontroller has features similar to those of a standard personal computer.
    The microcontroller contains a CPU (central processing unit), RAM (random
    access memory), ROM (read­only memory), I/O (input/output) lines, serial and
    parallel ports, timers, and sometimes other built­in peripherals such as analog­to­digital (A/D) and digital­to­analog (D/A) converters.  The key feature,
    however, is the microcontroller’s capability of uploading, storing, and running
    a program.
    ", price: 200, grade: 4, rating: 5, url_course:"https://www.youtube.com/watch?v=your_url")
course_steve1 = Course.create(user_id: steve.id, title: "Creative writing", name: "Writing creative fiction", category: "literature", description: "A course on writing creative fiction.", content: "
    This double helix of reading and writing makes you more alert to your
    potential as a reader and writer of yourself, of other people and of other writers.
    It also creates a discipline in your life that makes these acts of attention a way of
    life. It is then vital you learn to work alone and beyond your potential – writers
    and readers alike work beyond their own intelligence.
    As this is an introduction to a discipline, we discuss where creative writing
    comes from, the various forms and camouflages it has taken and why we teach
    and learn it. I do not present you with an anatomy of the various histories of
    creative writing in higher education; there are fine examples available in print
    (Dawson, 2005; Myers, 1995).
    The first five chapters explore principles and procedures of creative writing
    that apply generally to the writing and techniques of fiction, creative nonfiction, poetry and, to some extent, drama. Guests to this party include reading,
    criticism, vocation, influence, reflection, experience, play, publishing, editing,
    language, translation, imitation, experiment, design, form, quality, discipline,
    notebooks, working habits, fieldwork, composition, incubation, planning, fluency, finishing, rewriting, deadlines, precision, confidence, practice, audience,
    voice and selves. We look at the meaning and sound of language; the different states of mind we use for writing; the workshop in its various guises and
    disguises; and the enemies and allies of creativity. I also explore the characteristics of mind by which we might develop writerly stamina.
    ", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")

course_steve2 = Course.create(user_id: steve.id, title: "Writing like a boss", name: "Writing creative fiction", category: "literature", description: "A course on writing creative fiction.", content: "
    Learning to write well is not for the faint of heart. It requires
    knowledge, effort perseverance, grit and repetition to master; yet often
    the skills required to effectively convey scientific data are not stressed or
    taught in the modern postgraduate medical training. While the most
    crucial aspect of getting a manuscript published will always be the
    actual content, there are ways to optimize the chances of acceptance by
    presenting the reviewers and editors with a beautifully written and clear
    manuscript so that they don’t have to interpret anything other than the
    merits of the science presented. The objectives of this publication are to
    1) improve writing style, 2) outline common pitfalls, 3) review key
    components of most common types of manuscripts, 4) describe databases available in gynecologic oncology and 5) provide a compilation of
    resources for manuscript writing.
    ", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_joseph4 = Course.create(user_id: joseph.id, title: "Univers", name: "Movement is like nothing", category: "physics", description: "How Newton discover gravoty", content: "
    We begin our study of motion by considering objects which are very small in comparison to
        the size of their movement through space. When we can deal with an object in this way we
        refer to it as a particle. In this chapter we deal with the case where a particle moves along
        a straight line.
        The particle’s location is specified by its coordinate, which will be denoted by x or y.
        As the particle moves, its coordinate changes with the time, t. The change in position from
        x1 to x2 of the particle is the displacement ∆x, with ∆x = x2 − x1.
    ", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_jim2 = Course.create(user_id: jim.id, title: "New element", name: "How create element", category: "chemistry", description: "How element is created in univers", content: "
    Chemistry is sometimes referred to as “the central science” due to its interconnectedness with a vast array of
    other STEM disciplines (STEM stands for areas of study in the science, technology, engineering, and math fields).
    Chemistry and the language of chemists play vital roles in biology, medicine, materials science, forensics,
    environmental science, and many other fields (Figure 1.3). The basic principles of physics are essential for
    understanding many aspects of chemistry, and there is extensive overlap between many subdisciplines within the
    two fields, such as chemical physics and nuclear chemistry. Mathematics, computer science, and information theory
    provide important tools that help us calculate, interpret, describe, and generally make sense of the chemical world.
    Biology and chemistry converge in biochemistry, which is crucial to understanding the many complex factors and
    processes that keep living organisms (such as us) alive. Chemical engineering, materials science, and nanotechnology
    combine chemical principles and empirical findings to produce useful substances, ranging from gasoline to fabrics to
    electronics. Agriculture, food science, veterinary science, and brewing and wine making help provide sustenance in
    the form of food and drink to the world’s population. Medicine, pharmacology, biotechnology, and botany identify
    and produce substances that help keep us healthy. Environmental science, geology, oceanography, and atmospheric
    science incorporate many chemical ideas to help us better understand and protect our physical world. Chemical ideas
    are used to help understand the universe in astronomy and cosmology.
    ", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_megan2 = Course.create(user_id: megan.id, title: "Linear algebra", name: "the study of master", category: "mathematics", description: "A art of mathematics", content: "
    The material is standard in that the subjects covered are Gaussian reduction,
    vector spaces, linear maps, determinants, and eigenvalues and eigenvectors.
    Another standard is the book’s audience: sophomores or juniors, usually with
    a background of at least one semester of calculus. The help that it gives to
    students comes from taking a developmental approach — this book’s presentation
    emphasizes motivation and naturalness, using many examples.
    The developmental approach is what most recommends this book so I will
    elaborate. Courses at the beginning of a mathematics program focus less on
    theory and more on calculating. Later courses ask for mathematical maturity: the
    ability to follow different types of arguments, a familiarity with the themes that
    underlie many mathematical investigations such as elementary set and function
    facts, and a capacity for some independent reading and thinking. Some programs
    have a separate course devoted to developing maturity but in any case a Linear
    Algebra course is an ideal spot to work on this transition. It comes early in a
    program so that progress made here pays off later but it also comes late enough
    so that the classroom contains only students who are serious about mathematics.
    The material is accessible, coherent, and elegant. And, examples are plentiful.
    Helping readers with their transition requires taking the mathematics seriously. All of the results here are proved. On the other hand, we cannot assume
    that students have already arrived and so in contrast with more advanced
    texts this book is f
    ", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_george3 = Course.create(user_id: george.id, title: "Classical art", name: "The art of painting", category: "art", description: "A course on painting like bob ross", content: "
        Greek art began in the Cycladic and Minoan civilizations, and gave birth to Western Classical Art. It
    absorbed influences of Eastern civilizations, of Roman art and its patrons, and the new religion of
    Orthodox Christianity in the Byzantine era. Greek art is mainly five forms: architecture, sculpture,
    painting, pottery and jewellery making.
    The art of ancient Greece is usually divided stylistically into four periods: the Geometric, Archaic,
    Classical and Hellenistic. The Geometric age is usually dated from about 1000 BC, although in
    reality little is known about art in Greece during the preceding 200 years, traditionally known as the
    Greek Dark Ages. The 7th century BC witnessed the slow development of the Archaic style as
    exemplified by the black-figure style of vase painting. Around 500 BC (shortly before the onset of
    the Persian Wars 480 BC to 448 BC) is usually taken as the dividing line between the Archaic and
    the Classical periods, and the reign of Alexander the Great (336 BC to 323 BC) is taken as
    separating the Classical from the Hellenistic periods. From some point in the 1st century BC
    onwards Greco-Roman is used, or more local terms for the Eastern Greek world.
    ", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")
course_steve3 = Course.create(user_id: steve.id, title: "Creative writing numero 2", name: "Writing creative fiction n.2", category: "literature", description: "The next of writing creative fiction.", content: "
    Space-time is a four-dimensional space used to represent the Universe in the
    theory of relativity, with three dimensions corresponding to ordinary space
    and the fourth as time. I mean the same when thinking about creative writing.
    Writing a poem, a story or a piece of creative nonfiction, is to catalyse the
    creation of a four-dimensional fabric that is the result when space and time
    become one.
    Every event in the universe can be located in the four-dimensional plane of
    space and time. Writing can create personal universes in which this system of
    events within space-time operates for the reader; the reader is its co-creator.
    Writing and reading are collaborative acts in the making and performance of
    space-time. Readers participate; they become, partly, writers. They will take
    part, consciously and unconsciously, in a literary creation, and live their life
    in that moment and at that speed – while they are reading. You make the
    words; they make the pictures. The reader lives their reading-time in a kind
    of psychological fifth dimension, where the book takes them, where the reader
    places themselves. A novel or poem is the visible part of an iceberg. As Ernest
    Hemingway put it, the knowledge a writer brings to the creation of that novel
    or poem is the unrevealed submerged section of that same iceberg. This book
    dives under that iceberg.
    ", price: 200, grade: 4, rating: 4, url_course:"https://www.youtube.com/watch?v=your_url")


puts "-------------- create Classe --------------"
class1 = Classe.create(course_id: course_george1.id, name: "Shakespearean literature class", max_people: 20, start_date: Time.now - 4.days, end_date: Time.now - 4.days + 1.hours)
class3 = Classe.create(course_id: course_george1.id, name: "Shakespearean literature class", max_people: 20, start_date: Time.now - 3.hours, end_date: Time.now - 2.hours)
class3 = Classe.create(course_id: course_george1.id, name: "Shakespearean literature class", max_people: 20, start_date: Time.now + 4.days, end_date: Time.now + 4.days + 1.hours)
class3 = Classe.create(course_id: course_george2.id, name: "Modernist literature class", max_people: 20, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class2 = Classe.create(course_id: course_megan1.id, name: "Calculus 101 class", max_people: 20, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class4 = Classe.create(course_id: course_jim1.id, name: "learn chimie class", max_people: 20, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class5 = Classe.create(course_id: course_jim1.id, name: "learn chimie class", max_people: 20, start_date: Time.now - 2.days, end_date: Time.now - 2.days + 1.hours)
class6 = Classe.create(course_id: course_joseph1.id, name: "space geomety chapiter 1", max_people: 20, start_date: Time.now - 3.hours, end_date: Time.now - 2.hours)


class7 = Classe.create(course_id: course_joseph4.id, name: "Movement is like nothing class", max_people: 20, start_date: Time.now + 3.hours, end_date: Time.now + 4.hours)
class8 = Classe.create(course_id: course_jim2.id, name: "New element class", max_people: 20, start_date: Time.now + 4.hours, end_date: Time.now + 5.hours)
class9 = Classe.create(course_id: course_joseph3.id, name: "Robotic class", max_people: 30, start_date: Time.now + 2.hours, end_date: Time.now + 3.hours)
class10 = Classe.create(course_id: course_joseph3.id, name: "Robotic class", max_people: 30, start_date: Time.now + 2.days + 2.hours, end_date: Time.now + 2.days + 3.hours)

class12 = Classe.create(course_id: course_joseph1.id, name: "Space geomety chapiter 2", max_people: 30, start_date: Time.now + 2.days + 2.hours, end_date: Time.now + 2.days + 3.hours)
class122 = Classe.create(course_id: course_joseph1.id, name: "Space geomety chapiter 2", max_people: 30, start_date: Time.now + 3.days + 2.hours, end_date: Time.now + 3.days + 3.hours)
class13 = Classe.create(course_id: course_jim1.id, name: "Introduction chimie for teacher", max_people: 30, start_date: Time.now + 2.days + 2.hours, end_date: Time.now + 2.days + 4.hours)


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
