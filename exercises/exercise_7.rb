require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# validations for both models

class Store < ActiveRecord::Base
 validates :name, length: { minimum: 3}
 validates :annual_revenue, numericality: {greater_than_equal_to: 0, only_integer: true}
end

class Employee < ActiveRecord::Base
validates :first_name, :last_name, :store, presence: true
validates :hourly_rate, numericality: {greater_than_equal_to:40 , less_than_or_equal_to: 200, only_integer: true}
end

print "Please type the name for a new store >"
answer = gets.chomp.to_s

new_store = Store.create( name: answer )

#print new_store.errors
# p "name errors " + new_store.errors.details[:name].to_s

new_store.errors.full_messages.each do |message|
  print message
end





