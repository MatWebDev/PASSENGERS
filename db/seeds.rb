require "open-uri"

User.destroy_all
Project.destroy_all
Chatroom.destroy_all
Collaboration.destroy_all

file = URI.open('https://avatars.githubusercontent.com/u/105067544?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Marilou',
  last_name: 'Pichol',
  email: 'marilou@test.com',
  password: '123456',
  phone_number: '0612345671',
  address: 'Martigues',
  siret: '123 456 789 00018',
  number_of_projects: 20,
  year_exp: 3,
  description: "I'm used to working with Ruby on Rails for the back, and ReactJs or html5/css3/Javascript for the front depending on the needs. I also like to discover new technologies or libraries when the project allows it!
  I can work on a site from A to Z as well as adapt to an ongoing project, web or mobile.
  Do not hesitate to look at my various professional experiences to know all the technologies on which I have been able to work and to contact me for further information.",
  skills: ['ruby', 'rails', 'python', 'javascript', 'java', 'html5', 'css3', 'react', 'wordpress', 'bootstrap'],
  # score_exp: 61
)
user.photo.attach(io: file, filename: 'marilou.jpeg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/103571112?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Guillaume',
  last_name: 'Teillais',
  email: 'guillaume@test.com',
  password: '123456',
  phone_number: '0612345672',
  address: 'Aix-en-Provence',
  siret: '456 789 123 00018',
  number_of_projects: 10,
  year_exp: 2,
  description: "Having already realized many applications for start-ups, I am specialized in the realization of MVP (Minimum Viable Product).
  I develop the entire application, front-end and back-end, and deliver the turnkey application.
  I also accompany for the publication on the blinds.",
  skills: ['ruby', 'rails', 'react', 'javascript', 'html5', 'css3'],
  # score_exp: 35
)
user.photo.attach(io: file, filename: 'guillaume.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/105813372?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Mathieu',
  last_name: 'Ferry',
  email: 'mathieu@test.com',
  password: '123456',
  phone_number: '0612345674',
  address: 'Bourreac',
  siret: '789 123 456 00018',
  number_of_projects: 5,
  year_exp: 1,
  description: "Engineer for 6 years, I specialize in Java/JEE fullstack web development.
  During these five years, I had the opportunity to provide solutions to complex problems all at high availability and high performance.
  Data and exchange security has always been one of my top priorities (PCI-DSS standard).",
  skills: ['ruby', 'rails','javascript', 'css3', 'html5'],
  # score_exp: 19
)
user.photo.attach(io: file, filename: 'mathieu.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/91216872?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Maewenn',
  last_name: 'Drean',
  email: 'md@test.com',
  password: '123456',
  phone_number: '0612375671',
  address: 'Nice',
  siret: '123 456 719 00018',
  number_of_projects: 20,
  year_exp: 3,
  description: "I'm used to working with Ruby on Rails for the back, and ReactJs or html5/css3/Javascript for the front depending on the needs. I also like to discover new technologies or libraries when the project allows it!
  I can work on a site from A to Z as well as adapt to an ongoing project, web or mobile.
  Do not hesitate to look at my various professional experiences to know all the technologies on which I have been able to work and to contact me for further information.",
  skills: ['ruby', 'python', 'javascript', 'java', 'html5', 'css3', 'react', 'rails', 'wordpress', 'bootstrap'],
  # score_exp: 61
)
user.photo.attach(io: file, filename: 'maewenn.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/95645345?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Jean-Guillaume',
  last_name: 'Vicente de Marengo',
  email: 'jg@test.com',
  password: '123456',
  phone_number: '0612335672',
  address: 'Marseille',
  siret: '456 789 123 00015',
  number_of_projects: 10,
  year_exp: 2,
  description: "Having already realized many applications for start-ups, I am specialized in the realization of MVP (Minimum Viable Product).
  I develop the entire application, front-end and back-end, and deliver the turnkey application.
  I also accompany for the publication on the blinds.",
  skills: ['ruby', 'python', 'javascript', 'rails', 'html5'],
  # score_exp: 35
)
user.photo.attach(io: file, filename: 'jean-guillaume.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/2136880?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Damien',
  last_name: 'Vincent',
  email: 'dv@test.com',
  password: '123456',
  phone_number: '0622345674',
  address: 'Marseille',
  siret: '789 123 125 00018',
  number_of_projects: 200,
  year_exp: 30,
  description: "Main teacher at Le Wagon Marseille, I specialize in Java/JEE fullstack web development.
  During these five years, I had the opportunity to provide solutions to complex problems all at high availability and high performance.
  Data and exchange security has always been one of my top priorities (PCI-DSS standard).",
  skills: ['ruby', 'python', 'javascript', 'java', 'html5', 'css3', 'react', 'rails', 'wordpress', 'bootstrap', 'photoshop', 'illustrator', 'woocommerce', 'php', 'csharp'],
  # score_exp: 245
)
user.photo.attach(io: file, filename: 'damien.jpg', content_type: 'image/jpeg')
user.save!


file = URI.open('https://avatars.githubusercontent.com/u/59578436?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Théo',
  last_name: 'Bondaz aka "le Brésilien"',
  email: 'tm@test.com',
  password: '123456',
  phone_number: '0712345673',
  address: 'Marseille',
  siret: '123 759 456 00018',
  number_of_projects: 5,
  year_exp: 1,
  description: "Freelancer and Le Wagon teacher. I'm a bit of a jack-of-all-trades.
  I have a strong appetite for functional projects even if I have a lot of experience in technical projects.
  I can work on web development projects (fullstack: Backend in Python and Frontend in javascript) as well as on IS architecture in AGILE method. I like working independently and I adapt very easily to a new work group.
  I'm more successful on python in back-end web development.",
  skills: ['ruby', 'rails','javascript', 'css3', 'html5'],
  # score_exp: 19
)
user.photo.attach(io: file, filename: 'theo.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/63111765?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Maélie',
  last_name: 'Poussier',
  email: 'maep@test.com',
  password: '123456',
  phone_number: '0612345974',
  address: 'Nantes',
  siret: '789 123 476 00018',
  number_of_projects: 90,
  year_exp: 10,
  description: "Teacher at Le Wagon Nantes & Marseille. I specialize in Java/JEE fullstack web development.
  During these five years, I had the opportunity to provide solutions to complex problems all at high availability and high performance.
  Data and exchange security has always been one of my top priorities (PCI-DSS standard).",
  skills: ['ruby', 'python', 'javascript', 'java', 'html5', 'css3', 'react', 'rails', 'wordpress', 'bootstrap', 'photoshop', 'illustrator', 'woocommerce', 'php', 'csharp'],
  # score_exp: 245
)
user.photo.attach(io: file, filename: 'maelie.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/71704300?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'John-Wolf',
  last_name: 'Peres',
  email: 'jlp@test.com',
  password: '123456',
  phone_number: '0615345671',
  address: 'Toulon',
  siret: '123 456 749 00018',
  number_of_projects: 25,
  year_exp: 5,
  description: "I'm used to working with Ruby on Rails for the back, and ReactJs or html5/css3/Javascript for the front depending on the needs. I also like to discover new technologies or libraries when the project allows it!
  I can work on a site from A to Z as well as adapt to an ongoing project, web or mobile.
  Do not hesitate to look at my various professional experiences to know all the technologies on which I have been able to work and to contact me for further information.",
  skills: ['ruby', 'python', 'javascript', 'java', 'html5', 'css3', 'react', 'rails', 'wordpress', 'bootstrap'],
  # score_exp: 85
)
user.photo.attach(io: file, filename: 'jean-loup.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/2471555?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Boris',
  last_name: 'Paillard',
  email: 'bp@test.com',
  password: '123456',
  phone_number: '0612345573',
  address: 'Paris',
  siret: '123 789 456 70018',
  number_of_projects: 95,
  year_exp: 7,
  description: "CEO Le Wagon & freshly graduated from Epitech, I'm a bit of a jack-of-all-trades.
  I have a strong appetite for functional projects even if I have a lot of experience in technical projects.
  I can work on web development projects (fullstack: Backend in Python and Frontend in javascript) as well as on IS architecture in AGILE method. I like working independently and I adapt very easily to a new work group.
  I'm more successful on python in back-end web development.",
  skills: ['ruby', 'python', 'javascript', 'java', 'html5', 'css3', 'react', 'rails', 'wordpress', 'bootstrap'],
  # score_exp: 19
)
user.photo.attach(io: file, filename: 'boris.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/414418?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Sébastien',
  last_name: '"Holy" Saunier',
  email: 'ss@test.com',
  password: '123456',
  phone_number: '0614345674',
  address: 'Paris',
  siret: '789 123 456 00518',
  number_of_projects: 490,
  year_exp: 20,
  description: "God of Code, worshiped by the #972 Batch. CTO & Co-Founder @lewagon. Engineer for 6 years, I specialize in Java/JEE fullstack web development.
  During these five years, I had the opportunity to provide solutions to complex problems all at high availability and high performance.
  Data and exchange security has always been one of my top priorities (PCI-DSS standard).",
  skills: ['ruby', 'python', 'javascript', 'java', 'html5', 'css3', 'react', 'rails', 'wordpress', 'bootstrap', 'photoshop', 'illustrator', 'woocommerce', 'php', 'csharp'],
  # score_exp: 245
)
user.photo.attach(io: file, filename: 'sebastien.jpg', content_type: 'image/jpeg')
user.save!

User.create!(
  role: 'customer',
  first_name: 'Jérome',
  last_name: 'Pomonti',
  email: 'jerome@test.com',
  password: '123456',
  phone_number: '0612345685',
  address: 'Nouméa',
  company_name: 'API Culteur'
)

puts 'Users created successfully man!'

Project.create!(
  title: "Handmade Jewelry E-shop",
  description: "I make handmade jewelry. My business is growing and I would like to sell my jewelry on my own sales website.",
  origin: "Creation",
  website: "E-shop under 10 items",
  user_id: User.find_by(first_name: 'Jérome').id,
  score_difficulty: 2
)

Project.create!(
  title: "Showcase website for Locksmith",
  description: "I am a locksmith in Marseille, I have a shop but I would like to extend my activity throughout the region. So I would like to have a site to show my activity on the internet and find new customer.",
  origin: "Creation",
  website: "Vitrine",
  user_id: User.find_by(first_name: 'Jérome').id,
  score_difficulty: 1
)

Project.create!(
  title: "Webapp 'API Culteur'",
  description: "My company needs a Web app in order to reach Wordlwide reputation.
  We want to export our honey all over the world with a delivery system. An app based on Deliveroo model would fit perfectly with our strategy and the growth of our business.
  Please contact me for any further informations I will be glad to discuss about it!",
  origin: "Creation",
  website: "WebApp",
  user_id: User.find_by(first_name: 'Jérome').id,
  score_difficulty: 4
)

puts 'Projects created successfully man!'

Chatroom.create!(name: "Chatroom")

puts 'Chatroom created successfully man!'

Collaboration.create!(
  title: "Key of success for your business!",
  total_price: 1500,
  project_id: Project.find_by(title: "Showcase website for Locksmith").id,
  user_id: User.find_by(first_name: 'Mathieu').id,
  status: 'pending'
)

Collaboration.create!(
  title: "Boost your jewels!",
  total_price: 3000,
  project_id: Project.find_by(title: "Handmade Jewelry E-shop").id,
  user_id: User.find_by(first_name: 'Mathieu').id,
  status: 'accepted'
)

puts 'Collaborations created successfully man!'
