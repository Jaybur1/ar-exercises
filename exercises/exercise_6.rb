require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Popo", last_name: "Popov", hourly_rate: 55)
@store1.employees.create(first_name: "Pipin", last_name: "Took", hourly_rate: 45)

@store2.employees.create(first_name: "Frodo", last_name: "Baggins", hourly_rate: 70)
@store2.employees.create(first_name: "Sam", last_name: "Gamdgy", hourly_rate: 75)
@store2.employees.create(first_name: "Gimgi", last_name: "Pimgi", hourly_rate: 41)

