require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'


puts "Exercise 8"
puts "----------"

@new_employee =@store1.employees.create(first_name: "Koko", last_name: "Virani", hourly_rate: 60)

puts @new_employee.password