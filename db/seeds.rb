# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.create([
  { name: "Donatello", address: "25 Fulham Road" },
  { name: "Raffaello", address: "26 Fulham Road" },
  { name: "Michelangelo", address: "27 Fulham Road" },
  { name: "Leonardo", address: "28 Fulham Road" }
])

Item.create([
  { name: "Frutti di mamma", price: 25.65, restaurant_id: 1, image: "https://media-cdn.tripadvisor.com/media/photo-s/11/57/57/d4/frutti-di-mare.jpg" },
  { name: "Holy Macaroni", price: 15.79, restaurant_id: 1, image: "https://cdn.theatlantic.com/thumbor/mpbEjpIUJJ-DLLUkOxgZH2URkYA=/667x0:2000x1333/500x500/media/img/2016/09/DIS_Gilsinan_BigInEurope/original.jpg" },
  { name: "Pizza", price: 18.70, restaurant_id: 1, image: "https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/alpine_pizza_32132_16x9.jpg" }
  
])

Order.create([
    { date: "28.05", restaurant_id: 1}
])

OrderItem.create([
    { order_id: 1, item_id: 1 },
    { order_id: 1, item_id: 2 },
    { order_id: 1, item_id: 3 }
    
])
