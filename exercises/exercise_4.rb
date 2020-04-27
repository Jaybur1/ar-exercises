require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel:true
)

Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel:false
)

Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel:true
)


@mens_stores = Store.where(mens_apparel: true)

puts "Man's Stores"
@mens_stores.each {|store| puts "name: #{store.name}, annual_revenue: #{store.annual_revenue}"}

@womens_stores_less_then_1m = Store.where("womens_apparel = true AND annual_revenue < 1000000")

puts "Women's Stores with annual revenue less then 1M$"
@womens_stores_less_then_1m.each {|store| puts "name: #{store.name}, annual_revenue: #{store.annual_revenue}"}
