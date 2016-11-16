# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i = 0
10.times do
  p = Project.create!(name: 'ironhack'+ i.to_s , description: 'ironhack is a ....')
  p.time_entries.create(hours: rand(0...15), minutes: rand(0...2), date: Date.today)

  i+=1
end