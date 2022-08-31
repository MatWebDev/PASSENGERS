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
  number_of_projects: 42,
  batch_date: '2015-12-01',
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
  skills: ['ruby']
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
  number_of_projects: 20,
  batch_date: '2020-10-13',
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
  skills: ['ruby']
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
  batch_date: '2022-02-02',
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
  skills: ['ruby']
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
  number_of_projects: 272,
  batch_date: '2010-04-21',
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
  skills: ['ruby']
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
  user_id: User.find_by(first_name: 'Jean-Michel').id
)

Project.create!(
  title: "One Page website",
  description: "I need a one page website for my company, I don't know anything about web development, please help me!",
  answers: ['creation', 'one page'],
  user_id: User.find_by(first_name: 'Jean-Michel').id
)

Project.create!(
  title: "Big eshop",
  description: "We need a big eshop to sale different products in several categories. We don't have development department so we need a freelancer!",
  answers: ['creation', 'eshop over 10 items'],
  user_id: User.find_by(first_name: 'Jean-Michel').id
)

puts 'Projects created successfully man!'
