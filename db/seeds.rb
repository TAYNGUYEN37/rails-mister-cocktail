# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "clearing DB"
Dose.delete_all
Ingredient.delete_all
Cocktail.delete_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

puts "finished"


# require 'open-uri'
# url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
# serialized = JSON.parse(open(url).read)

# results = serialized["drinks"]
# results.each do [result]
#   Ingredient.create(name: result["StrIngredient1"])
# end
