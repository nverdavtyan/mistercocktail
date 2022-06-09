# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

Ingredient.destroy_all
ingredients = [
   {name: "Sucre"},
   {name: "Rome"},
   {name: "Aperol"},
   {name: "Citron"},
   {name: "Cointreau"},
   {name: "Orange"},
   {name: "Coconut créme"},
   {name: "Menthe"},
   {name: "Prosecco"},
   {name: "Eau gazeuse"},
]


  ingredients.each do |ingredient|
    Ingredient.create ingredient
 end





