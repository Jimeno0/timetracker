# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.create!(name: 'ironhack', description: 'ironhack is a ....')
Project.create!(name: 'Time tracking app')
Project.create!(name: 'Recipes', description: 'Track my favorites recipes')

i = 0
10.times do
  Project.create!(name: 'ironhack'+ i.to_s , description: 'ironhack is a ....')
  i+=1
end