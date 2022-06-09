# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Product.destroy_all
  Category.destroy_all

  poussette = Category.create({product_name: "poussette"})
  siège_auto = Category.create({product_name: "siège auto"})
  puts "#{Category.count} categories ont été créeés"

2.times do
  prod1 = Product.create!(category_id: poussette.id, product_photo:"loca.jpeg", city: "Nice", number_of_place: 1, weight: 8, age_of_product: 1, details:"en très bon état, légère et confortable, se plie facilement", child_weight: 5, marque:"cybex", color:"black", prix_par_jour:5, rating: 5)
  prod2 = Product.create!([{ category_id: siège_auto.id, product_photo: "sieg.jpeg", number_of_place: 1, city: "Nice", weight: 6, age_of_product: 2, details:"en très bon état, pivotant 360", child_weight: 3, marque:"britax romer", color:"bleu", prix_par_jour:5, rating: 5}])
  prod3 = Product.create!(category_id: poussette.id, product_photo:"loca1.jpeg",city: "Nice",  number_of_place: 1, weight: 8, age_of_product: 1, details:"en très bon état, légère et confortable, se plie facilement", child_weight: 5, marque:"cybex", color:"black", prix_par_jour:5, rating: 5)
  prod4 = Product.create!([{ category_id: siège_auto.id, product_photo: "sieg.jpeg", number_of_place: 1,city: "Nice",  weight: 6, age_of_product: 2, details:"en très bon état, pivotant 360", child_weight: 3, marque:"britax romer", color:"bleu", prix_par_jour:5, rating: 5}])
  prod5 = Product.create!(category_id: poussette.id, product_photo:"loca2.jpeg",city: "Paris",  number_of_place: 1, weight: 8, age_of_product: 1, details:"en très bon état, légère et confortable, se plie facilement", child_weight: 5, marque:"cybex", color:"black", prix_par_jour:5, rating: 5)
  prod6 = Product.create!([{ category_id: siège_auto.id, product_photo: "sieg.jpeg", number_of_place: 1,city: "Paris",  weight: 6, age_of_product: 2, details:"en très bon état, pivotant 360", child_weight: 3, marque:"britax romer", color:"bleu", prix_par_jour:5, rating: 5}])
  prod7 = Product.create!(category_id: poussette.id, product_photo:"loca3.jpeg", city: "Paris", number_of_place: 1, weight: 8, age_of_product: 1, details:"en très bon état, légère et confortable, se plie facilement", child_weight: 5, marque:"cybex", color:"black", prix_par_jour:5, rating: 5)
  prod8 = Product.create!([{ category_id: siège_auto.id, product_photo: "sieg.jpeg", number_of_place: 1, city: "Paris", weight: 6, age_of_product: 2, details:"en très bon état, pivotant 360", child_weight: 3, marque:"britax romer", color:"bleu", prix_par_jour:5, rating: 5}])
  puts "#{Product.count} produits ont été créeés"
end
  user = User.create(email: "test@live.fr", password: "azerty")
