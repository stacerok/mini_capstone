# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = Product.create(name: "jeans", price: 120, image_url: "http://www.jeans.com", description: "distressed premium denim")

products = Product.create(name: "sunglasses", price: 120, image_url: "http://www.sunglasses.com", description: "classic aviators")