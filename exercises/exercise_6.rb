require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Robin", last_name: "Shrestha", hourly_rate: 30)
@store1.employees.create(first_name: "Manuel", last_name: "Casanova", hourly_rate: 40)
@store1.employees.create(first_name: "Karol", last_name: "Din", hourly_rate: 50)
@store2.employees.create(first_name: "Ian", last_name: "Icar", hourly_rate: 70)
@store2.employees.create(first_name: "Mustapha", last_name: "Mos", hourly_rate: 35)
@store2.employees.create(first_name: "Seun", last_name: "Lee", hourly_rate: 45)
@store2.employees.create(first_name: "Sara", last_name: "McDonald", hourly_rate: 35)
