User.destroy_all
Project.destroy_all
Chatroom.destroy_all

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
  number_of_projects: 25,
  year_exp: 5,
  description: "I'm used to working with Ruby on Rails for the back, and ReactJs or HTML/CSS/Javascript for the front depending on the needs. I also like to discover new technologies or libraries when the project allows it!
  I can work on a site from A to Z as well as adapt to an ongoing project, web or mobile.
  Do not hesitate to look at my various professional experiences to know all the technologies on which I have been able to work and to contact me for further information.",
  skills: ['ruby', 'python', 'js', 'java', 'html', 'css', 'react', 'rails', 'wordpress', 'bootstrap'],
  # score_exp: 85
)
user.photo.attached(io: file, filename: 'marilou.jpg', content_type: 'image/jpeg')
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
  skills: ['ruby', 'python', 'js', 'java', 'html'],
  # score_exp: 35
)
user.photo.attached(io: file, filename: 'guillaume.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/102875112?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Jerome',
  last_name: 'Pomonti',
  email: 'jerome@test.com',
  password: '123456',
  phone_number: '0612345673',
  address: 'Noumea',
  siret: '123 789 456 00018',
  number_of_projects: 5,
  year_exp: 1,
  description: "Freshly graduated from Epitech, I'm a bit of a jack-of-all-trades.
  I have a strong appetite for functional projects even if I have a lot of experience in technical projects.
  I can work on web development projects (fullstack: Backend in Python and Frontend in js) as well as on IS architecture in AGILE method. I like working independently and I adapt very easily to a new work group.
  I'm more successful on python in back-end web development.",
  skills: ['ruby', 'python', 'wordpress', 'html'],
  # score_exp: 19
)
user.photo.attached(io: file, filename: 'jerome.jpg', content_type: 'image/jpeg')
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
  number_of_projects: 90,
  year_exp: 10,
  description: "Engineer for 6 years, I specialize in Java/JEE fullstack web development.
  During these five years, I had the opportunity to provide solutions to complex problems all at high availability and high performance.
  Data and exchange security has always been one of my top priorities (PCI-DSS standard).",
  skills: ['ruby', 'python', 'js', 'java', 'html', 'css', 'react', 'rails', 'wordpress', 'bootstrap', 'divi', 'woocommerce', 'php', 'shopify', 'c#'],
  # score_exp: 245
)
user.photo.attached(io: file, filename: 'mathieu.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/105067544?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Maewenn',
  last_name: 'Drean',
  email: 'md@test.com',
  password: '123456',
  phone_number: '0612345671',
  address: 'Martigues',
  siret: '123 456 789 00018',
  number_of_projects: 25,
  year_exp: 5,
  description: "I'm used to working with Ruby on Rails for the back, and ReactJs or HTML/CSS/Javascript for the front depending on the needs. I also like to discover new technologies or libraries when the project allows it!
  I can work on a site from A to Z as well as adapt to an ongoing project, web or mobile.
  Do not hesitate to look at my various professional experiences to know all the technologies on which I have been able to work and to contact me for further information.",
  skills: ['ruby', 'python', 'js', 'java', 'html', 'css', 'react', 'rails', 'wordpress', 'bootstrap'],
  # score_exp: 85
)
user.photo.attached(io: file, filename: 'marilou.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/103571112?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Jean-Guillaume',
  last_name: 'Yangui',
  email: 'jg@test.com',
  password: '123456',
  phone_number: '0612345672',
  address: 'Aix-en-Provence',
  siret: '456 789 123 00018',
  number_of_projects: 10,
  year_exp: 2,
  description: "Having already realized many applications for start-ups, I am specialized in the realization of MVP (Minimum Viable Product).
  I develop the entire application, front-end and back-end, and deliver the turnkey application.
  I also accompany for the publication on the blinds.",
  skills: ['ruby', 'python', 'js', 'java', 'html'],
  # score_exp: 35
)
user.photo.attached(io: file, filename: 'guillaume.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/102875112?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Loris',
  last_name: 'DeNice',
  email: 'ln@test.com',
  password: '123456',
  phone_number: '0612345673',
  address: 'Noumea',
  siret: '123 789 456 00018',
  number_of_projects: 5,
  year_exp: 1,
  description: "Freshly graduated from Epitech, I'm a bit of a jack-of-all-trades.
  I have a strong appetite for functional projects even if I have a lot of experience in technical projects.
  I can work on web development projects (fullstack: Backend in Python and Frontend in js) as well as on IS architecture in AGILE method. I like working independently and I adapt very easily to a new work group.
  I'm more successful on python in back-end web development.",
  skills: ['ruby', 'python', 'wordpress', 'html'],
  # score_exp: 19
)
user.photo.attached(io: file, filename: 'jerome.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/105813372?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Damien',
  last_name: 'Vincent',
  email: 'dv@test.com',
  password: '123456',
  phone_number: '0612345674',
  address: 'Bourreac',
  siret: '789 123 456 00018',
  number_of_projects: 90,
  year_exp: 10,
  description: "Engineer for 6 years, I specialize in Java/JEE fullstack web development.
  During these five years, I had the opportunity to provide solutions to complex problems all at high availability and high performance.
  Data and exchange security has always been one of my top priorities (PCI-DSS standard).",
  skills: ['ruby', 'python', 'js', 'java', 'html', 'css', 'react', 'rails', 'wordpress', 'bootstrap', 'divi', 'woocommerce', 'php', 'shopify', 'c#'],
  # score_exp: 245
)
user.photo.attached(io: file, filename: 'mathieu.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/105067544?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Christophe',
  last_name: 'LeBoss',
  email: 'cb@test.com',
  password: '123456',
  phone_number: '0612345671',
  address: 'Martigues',
  siret: '123 456 789 00018',
  number_of_projects: 25,
  year_exp: 5,
  description: "I'm used to working with Ruby on Rails for the back, and ReactJs or HTML/CSS/Javascript for the front depending on the needs. I also like to discover new technologies or libraries when the project allows it!
  I can work on a site from A to Z as well as adapt to an ongoing project, web or mobile.
  Do not hesitate to look at my various professional experiences to know all the technologies on which I have been able to work and to contact me for further information.",
  skills: ['ruby', 'python', 'js', 'java', 'html', 'css', 'react', 'rails', 'wordpress', 'bootstrap'],
  # score_exp: 85
)
user.photo.attached(io: file, filename: 'marilou.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/103571112?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Serge',
  last_name: 'Java',
  email: 'sj@test.com',
  password: '123456',
  phone_number: '0612345672',
  address: 'Aix-en-Provence',
  siret: '456 789 123 00018',
  number_of_projects: 10,
  year_exp: 2,
  description: "Having already realized many applications for start-ups, I am specialized in the realization of MVP (Minimum Viable Product).
  I develop the entire application, front-end and back-end, and deliver the turnkey application.
  I also accompany for the publication on the blinds.",
  skills: ['ruby', 'python', 'js', 'java', 'html'],
  # score_exp: 35
)
user.photo.attached(io: file, filename: 'guillaume.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/102875112?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Théo',
  last_name: 'LeMonstre',
  email: 'tm@test.com',
  password: '123456',
  phone_number: '0612345673',
  address: 'Noumea',
  siret: '123 789 456 00018',
  number_of_projects: 5,
  year_exp: 1,
  description: "Freshly graduated from Epitech, I'm a bit of a jack-of-all-trades.
  I have a strong appetite for functional projects even if I have a lot of experience in technical projects.
  I can work on web development projects (fullstack: Backend in Python and Frontend in js) as well as on IS architecture in AGILE method. I like working independently and I adapt very easily to a new work group.
  I'm more successful on python in back-end web development.",
  skills: ['ruby', 'python', 'wordpress', 'html'],
  # score_exp: 19
)
user.photo.attached(io: file, filename: 'jerome.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/105813372?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Maélie',
  last_name: 'DeNantes',
  email: 'mn@test.com',
  password: '123456',
  phone_number: '0612345674',
  address: 'Bourreac',
  siret: '789 123 456 00018',
  number_of_projects: 90,
  year_exp: 10,
  description: "Engineer for 6 years, I specialize in Java/JEE fullstack web development.
  During these five years, I had the opportunity to provide solutions to complex problems all at high availability and high performance.
  Data and exchange security has always been one of my top priorities (PCI-DSS standard).",
  skills: ['ruby', 'python', 'js', 'java', 'html', 'css', 'react', 'rails', 'wordpress', 'bootstrap', 'divi', 'woocommerce', 'php', 'shopify', 'c#'],
  # score_exp: 245
)
user.photo.attached(io: file, filename: 'mathieu.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/105067544?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Jean-Loup',
  last_name: 'LeCrack',
  email: 'jlc@test.com',
  password: '123456',
  phone_number: '0612345671',
  address: 'Martigues',
  siret: '123 456 789 00018',
  number_of_projects: 25,
  year_exp: 5,
  description: "I'm used to working with Ruby on Rails for the back, and ReactJs or HTML/CSS/Javascript for the front depending on the needs. I also like to discover new technologies or libraries when the project allows it!
  I can work on a site from A to Z as well as adapt to an ongoing project, web or mobile.
  Do not hesitate to look at my various professional experiences to know all the technologies on which I have been able to work and to contact me for further information.",
  skills: ['ruby', 'python', 'js', 'java', 'html', 'css', 'react', 'rails', 'wordpress', 'bootstrap'],
  # score_exp: 85
)
user.photo.attached(io: file, filename: 'marilou.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/103571112?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'John',
  last_name: 'Wolf',
  email: 'jw@test.com',
  password: '123456',
  phone_number: '0612345672',
  address: 'Aix-en-Provence',
  siret: '456 789 123 00018',
  number_of_projects: 10,
  year_exp: 2,
  description: "Having already realized many applications for start-ups, I am specialized in the realization of MVP (Minimum Viable Product).
  I develop the entire application, front-end and back-end, and deliver the turnkey application.
  I also accompany for the publication on the blinds.",
  skills: ['ruby', 'python', 'js', 'java', 'html'],
  # score_exp: 35
)
user.photo.attached(io: file, filename: 'guillaume.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/102875112?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Boris',
  last_name: 'Paillard',
  email: 'bp@test.com',
  password: '123456',
  phone_number: '0612345673',
  address: 'Noumea',
  siret: '123 789 456 00018',
  number_of_projects: 5,
  year_exp: 1,
  description: "Freshly graduated from Epitech, I'm a bit of a jack-of-all-trades.
  I have a strong appetite for functional projects even if I have a lot of experience in technical projects.
  I can work on web development projects (fullstack: Backend in Python and Frontend in js) as well as on IS architecture in AGILE method. I like working independently and I adapt very easily to a new work group.
  I'm more successful on python in back-end web development.",
  skills: ['ruby', 'python', 'wordpress', 'html'],
  # score_exp: 19
)
user.photo.attached(io: file, filename: 'jerome.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/105813372?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Sébastien',
  last_name: 'Saunier',
  email: 'ss@test.com',
  password: '123456',
  phone_number: '0612345674',
  address: 'Bourreac',
  siret: '789 123 456 00018',
  number_of_projects: 90,
  year_exp: 10,
  description: "Engineer for 6 years, I specialize in Java/JEE fullstack web development.
  During these five years, I had the opportunity to provide solutions to complex problems all at high availability and high performance.
  Data and exchange security has always been one of my top priorities (PCI-DSS standard).",
  skills: ['ruby', 'python', 'js', 'java', 'html', 'css', 'react', 'rails', 'wordpress', 'bootstrap', 'divi', 'woocommerce', 'php', 'shopify', 'c#'],
  # score_exp: 245
)
user.photo.attached(io: file, filename: 'mathieu.jpg', content_type: 'image/jpeg')
user.save!

file = URI.open('https://avatars.githubusercontent.com/u/102875112?v=4')
user = User.new(
  role: 'freelancer',
  first_name: 'Dylane',
  last_name: 'DeMarseille',
  email: 'dmrs@test.com',
  password: '123456',
  phone_number: '0612345673',
  address: 'Noumea',
  siret: '123 789 456 00018',
  number_of_projects: 5,
  year_exp: 1,
  description: "Freshly graduated from Epitech, I'm a bit of a jack-of-all-trades.
  I have a strong appetite for functional projects even if I have a lot of experience in technical projects.
  I can work on web development projects (fullstack: Backend in Python and Frontend in js) as well as on IS architecture in AGILE method. I like working independently and I adapt very easily to a new work group.
  I'm more successful on python in back-end web development.",
  skills: ['ruby', 'python', 'wordpress', 'html'],
  # score_exp: 19
)
user.photo.attached(io: file, filename: 'mathieu.jpg', content_type: 'image/jpeg')
user.save!

User.create!(
  role: 'customer',
  first_name: 'Jean-Michel',
  last_name: 'Test',
  email: 'jm@test.com',
  password: '123456',
  phone_number: '0612345685',
  address: 'Marseille',
  company_name: 'Jean-Michel&Fils'
)

puts 'Users created successfully man!'

Project.create!(
  title: "e-shop creation for JM company",
  description: "I need an e-shop for my company, I don't know anything about web development, please help me!",
  origin: "Creation",
  website: "E-shop under 10 items",
  user_id: User.find_by(first_name: 'Jean-Michel').id,
  score_difficulty: 2
)

Project.create!(
  title: "One Page website",
  description: "I need a one page website for my company, I don't know anything about web development, please help me!",
  origin: "Creation",
  website: "One Page",
  user_id: User.find_by(first_name: 'Jean-Michel').id,
  score_difficulty: 1
)

Project.create!(
  title: "Big eshop",
  description: "We need a big eshop to sale different products in several categories. We don't have development department so we need a freelancer!",
  origin: "Creation",
  website: "E-shop over 10 items",
  user_id: User.find_by(first_name: 'Jean-Michel').id,
  score_difficulty: 3
)

Project.create!(
  title: "Webapp JM&Beer",
  description: "We need a web app to serve automatically a beer to our customer.",
  origin: "Creation",
  website: "WebApp",
  user_id: User.find_by(first_name: 'Jean-Michel').id,
  score_difficulty: 4
)

Project.create!(
  title: "Webapp JM&Fils",
  description: "We need a web app but we don't know why.",
  origin: "Creation",
  website: "WebApp",
  user_id: User.find_by(first_name: 'Jean-Michel').id,
  score_difficulty: 4
)

puts 'Projects created successfully man!'

Chatroom.create!(name: "Chatroom")

puts 'Chatroom created successfully man!'
