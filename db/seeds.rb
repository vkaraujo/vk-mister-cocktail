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

one_photo = "https://images.unsplash.com/photo-1518176258769-f227c798150e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80"
file = URI.open(one_photo)
filename = File.basename(URI.parse(one_photo).path)
one_cocktail = Cocktail.create(name: "Beer")
one_cocktail.photo.attach(io: file, filename: filename)
one_cocktail.save

second_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1593031247/Marguerita_zl6aqu.jpg"
file = URI.open(second_photo)
filename = File.basename(URI.parse(second_photo).path)
second_cocktail = Cocktail.create(name: "Marguerita")
second_cocktail.photo.attach(io: file, filename: filename)
second_cocktail.save

thrid_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1593031335/Ice_Coffe_oigkfd.jpg"
file = URI.open(thrid_photo)
filename = File.basename(URI.parse(thrid_photo).path)
thrid_cocktail = Cocktail.create(name: "Ice Coffe")
thrid_cocktail.photo.attach(io: file, filename: filename)
thrid_cocktail.save

fourth_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1593031428/vodka_party_qkskro.jpg"
file = URI.open(fourth_photo)
filename = File.basename(URI.parse(fourth_photo).path)
fourth_cocktail = Cocktail.create(name: "Party Vodka")
fourth_cocktail.photo.attach(io: file, filename: filename)
fourth_cocktail.save

fifth_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1593031514/cuba_libre_q94ick.jpg"
file = URI.open(fifth_photo)
filename = File.basename(URI.parse(fifth_photo).path)
fifth_cocktail = Cocktail.create(name: "Cuba Libre")
fifth_cocktail.photo.attach(io: file, filename: filename)
fifth_cocktail.save

sixth_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1593031566/caipirinha_x3tgw3.jpg"
file = URI.open(sixth_photo)
filename = File.basename(URI.parse(sixth_photo).path)
sixth_cocktail = Cocktail.create(name: "Caipirinha")
sixth_cocktail.photo.attach(io: file, filename: filename)
sixth_cocktail.save

seventh_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1593031823/capirinha_de_morango_urtpy0.jpg"
file = URI.open(seventh_photo)
filename = File.basename(URI.parse(seventh_photo).path)
seventh_cocktail = Cocktail.create(name: "Strawberry Capirinha")
seventh_cocktail.photo.attach(io: file, filename: filename)
seventh_cocktail.save

eight_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1593031972/Old-Fashioned-Cocktail-LEAD-5_adfavm.jpg"
file = URI.open(eight_photo)
filename = File.basename(URI.parse(eight_photo).path)
eight_cocktail = Cocktail.create(name: "Old fashioned")
eight_cocktail.photo.attach(io: file, filename: filename)
eight_cocktail.save

ninght_photo = "https://res.cloudinary.com/dmcepupsl/image/upload/v1593033457/martini_vuuqdn.jpg"
file = URI.open(ninght_photo)
filename = File.basename(URI.parse(ninght_photo).path)
ninght_cocktail = Cocktail.create(name: "Apple Martini")
ninght_cocktail.photo.attach(io: file, filename: filename)
ninght_cocktail.save

puts "Cocktails Created"
