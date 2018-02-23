# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

url = 'https://picsum.photos/400/500/?random'

list = JSON.parse(open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

list['drinks'].each { |hash| Ingredient.create(name: hash['strIngredient1'].capitalize) }
# 10.times do
#   cocktail = Cocktail.new(name: "#{Faker::Color.color_name.capitalize} #{Faker::Name.first_name}" )
#   cocktail.remote_photo_url = url
#   cocktail.save!
#   rand(2..6).times do
#     dose = Dose.new(description: "#{rand(1..4)} cl")
#     dose.cocktail = cocktail
#     dose.ingredient_id = rand(1..157)
#     dose.save!
#   end
# end
