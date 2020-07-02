# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying All Cocktails"

Cocktail.destroy_all

puts "Creating Cocktails"

Ingredient.create(name: "Ice")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "Martini")
Ingredient.create(name: "Wisky")
Ingredient.create(name: "Rum")
Ingredient.create(name: "Beer")
Ingredient.create(name: "Gim")
Ingredient.create(name: "Cachaça")
Ingredient.create(name: "Soda")
Ingredient.create(name: "Coca Cola")
Ingredient.create(name: "Red Bull")
Ingredient.create(name: "Water")
Ingredient.create(name: "Fanta")
Ingredient.create(name: "Tonic Water")

Ingredient.create(name: "Pepper")
Ingredient.create(name: "Suga")
Ingredient.create(name: "Salt")
Ingredient.create(name: "Lemnon")
Ingredient.create(name: "Cinnamon")
Ingredient.create(name: "Orange")
Ingredient.create(name: "Olive")
Ingredient.create(name: "Apple")
Ingredient.create(name: "Strawberry")

one_photo = "https://images.unsplash.com/photo-1575367439058-6096bb9cf5e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
file = URI.open(one_photo)
filename = File.basename(URI.parse(one_photo).path)
one_cocktail = Cocktail.create(name: "Beer")
one_cocktail.photo.attach(io: file, filename: filename)
one_cocktail.save

second_photo = "https://images.unsplash.com/photo-1548849956-8aa872cefb93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
file = URI.open(second_photo)
filename = File.basename(URI.parse(second_photo).path)
second_cocktail = Cocktail.create(name: "Marguerita")
second_cocktail.photo.attach(io: file, filename: filename)
second_cocktail.save

thrid_photo = "https://images.unsplash.com/photo-1514189347135-3e90a3b561f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
file = URI.open(thrid_photo)
filename = File.basename(URI.parse(thrid_photo).path)
thrid_cocktail = Cocktail.create(name: "Ice Coffe")
thrid_cocktail.photo.attach(io: file, filename: filename)
thrid_cocktail.save

fourth_photo = "https://images.unsplash.com/photo-1459802071246-377c0346da93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=652&q=80"
file = URI.open(fourth_photo)
filename = File.basename(URI.parse(fourth_photo).path)
fourth_cocktail = Cocktail.create(name: "Vodka")
fourth_cocktail.photo.attach(io: file, filename: filename)
fourth_cocktail.save

sixth_photo = "https://images.unsplash.com/photo-1582568822042-613147a60a1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
file = URI.open(sixth_photo)
filename = File.basename(URI.parse(sixth_photo).path)
sixth_cocktail = Cocktail.create(name: "Caipirinha")
sixth_cocktail.photo.attach(io: file, filename: filename)
sixth_cocktail.save

eight_photo = "https://images.unsplash.com/photo-1499638673689-79a0b5115d87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"
file = URI.open(eight_photo)
filename = File.basename(URI.parse(eight_photo).path)
eight_cocktail = Cocktail.create(name: "Long Island Iced Tea")
eight_cocktail.photo.attach(io: file, filename: filename)
eight_cocktail.save

ninght_photo = "https://images.unsplash.com/photo-1575650772417-e6b418b0d106?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
file = URI.open(ninght_photo)
filename = File.basename(URI.parse(ninght_photo).path)
ninght_cocktail = Cocktail.create(name: "Apple Martini")
ninght_cocktail.photo.attach(io: file, filename: filename)
ninght_cocktail.save

puts "Cocktails Created"
