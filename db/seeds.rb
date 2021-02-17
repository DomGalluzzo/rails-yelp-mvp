# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

mcdonalds = Restaurant.create(name: 'McDonalds', address: '123 ABC', category: 'chinese', phone_number: '1232123123')
Review.create(content: 'nice', rating: 5, restaurant: mcdonalds)

chick_fil_a = Restaurant.create(name: 'Chick-fil-A', address: '456 abc', category: 'french', phone_number: '13123123123')
Review.create(content: 'Cool', rating: 10, restaurant: chick_fil_a)

red_robin = Restaurant.create(name: 'Red Robin', address: '789 ABC', category: 'italian', phone_number: '123213')
Review.create(content: 'okay', rating: 3, restaurant: red_robin)

burger_king = Restaurant.create(name: 'Burger King', address: '14234 ABC', category: 'belgian', phone_number: '1232123')
Review.create(content: 'nice', rating: 5, restaurant: burger_king)

wendys = Restaurant.create(name: 'Wendys', address: '765', category: 'chinese', phone_number: '123123123')
Review.create(content: 'nice', rating: 5, restaurant: wendys)
