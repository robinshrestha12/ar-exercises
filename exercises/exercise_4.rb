require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel:true)

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)
@womens_stores = Store.where(mens_apparel: false, womens_apparel: true)

p " list of men's apparel stores"
@mens_stores.each do |store|
  p "Store Name: " + store.name + ". Annual Revenue: " + store.annual_revenue.to_s
end

p " list of women's apparel stores"
@womens_stores.each do |store|
  p "Store Name: " + store.name + ". Annual Revenue: " + store.annual_revenue.to_s
end


