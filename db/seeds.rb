# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Freelancer.destroy_all
User.destroy_all

User.create!(
  first_name: 'Jean-Michel',
  last_name: 'Test',
  email: 'jm@test.com',
  phone_number: '0612345670',
  address: 'Paris',
  role: 'customer',
  company_name: 'JM Company',
  password: '123456'
)

User.create!(
  first_name: 'Marilou',
  last_name: 'Pichol',
  email: 'marilou@test.com',
  phone_number: '0612345671',
  address: 'Martigues',
  role: 'freelancer',
  password: '123456'
)

User.create!(
  first_name: 'Guillaume',
  last_name: 'Teillais',
  email: 'guillaume@test.com',
  phone_number: '0612345672',
  address: 'Aix-en-Provence',
  role: 'freelancer',
  password: '123456'
)

User.create!(
  first_name: 'Jerome',
  last_name: 'Pomonti',
  email: 'jerome@test.com',
  phone_number: '0612345673',
  address: 'Noumea',
  role: 'freelancer',
  password: '123456'
)

User.create!(
  first_name: 'Mathieu',
  last_name: 'Ferry',
  email: 'mathieu@test.com',
  phone_number: '0612345674',
  address: 'Bourreac',
  role: 'freelancer',
  password: '123456'
)

puts 'Users created successfully man!'

file = URI.open('https://avatars.githubusercontent.com/u/105067544?v=4')
free = Freelancer.new(
  user_id: 2,
  first_name: User.find(user_id).first_name,
  last_name: User.find(user_id).last_name,
  email: 'marilou@test.com',
  phone_number: '0612345671',
  address: 'Martigues',
  siret: '123 456 789 00018',
  number_of_projects: 42,
  batch_date: '2015-12-01'
)
free.photo.attached(io: file, filename: 'marilou.jpg', content_type: 'image/jpeg')
free.save!

# file = URI.open('https://avatars.githubusercontent.com/u/103571112?v=4')
# free = Freelancer.new(
#   user_id: 3,
#   first_name: 'Guillaume',
#   last_name: 'Teillais',
#   email: 'guillaume@test.com',
#   phone_number: '0612345672',
#   address: 'Aix-en-Provence',
#   siret: '456 789 123 00018',
#   number_of_projects: 7,
#   batch_date: '2020-04-27'
# )
# free.photo.attached(io: file, filename: 'guillaume.jpg', content_type: 'image/jpeg')
# free.save!

# file = URI.open('https://avatars.githubusercontent.com/u/102875112?v=4')
# free = Freelancer.new(
#   user_id: 4,
#   first_name: 'Jerome',
#   last_name: 'Pomonti',
#   email: 'jerome@test.com',
#   phone_number: '0612345673',
#   address: 'Noumea',
#   siret: '789 456 123 00018',
#   number_of_projects: 20,
#   batch_date: '2018-11-20'
# )
# free.photo.attached(io: file, filename: 'jerome.jpg', content_type: 'image/jpeg')
# free.save!

# puts 'Users created successfully man!'
