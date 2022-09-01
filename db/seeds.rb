User.destroy_all
Project.destroy_all

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
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
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
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
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
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
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
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
  skills: ['ruby', 'python', 'js', 'java', 'html', 'css', 'react', 'rails', 'wordpress', 'bootstrap', 'divi', 'woocommerce', 'php', 'shopify', 'c#'],
  # score_exp: 245
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
  answers: ['creation', 'eshop under 10 items'],
  user_id: User.find_by(first_name: 'Jean-Michel').id,
  score_difficulty: 2
)

Project.create!(
  title: "One Page website",
  description: "I need a one page website for my company, I don't know anything about web development, please help me!",
  answers: ['creation', 'one page'],
  user_id: User.find_by(first_name: 'Jean-Michel').id,
  score_difficulty: 1
)

Project.create!(
  title: "Big eshop",
  description: "We need a big eshop to sale different products in several categories. We don't have development department so we need a freelancer!",
  answers: ['creation', 'eshop over 10 items'],
  user_id: User.find_by(first_name: 'Jean-Michel').id,
  score_difficulty: 3
)

Project.create!(
  title: "Webapp JM&Beer",
  description: "We need a web app to serve automatically a beer to our customer.",
  answers: ['creation', 'webapp'],
  user_id: User.find_by(first_name: 'Jean-Michel').id,
  score_difficulty: 4
)

puts 'Projects created successfully man!'
