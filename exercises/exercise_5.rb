require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Output for total revenue for all the stores
p Store.sum("annual_revenue")

# Output the average annual revenue
p Store.average("annual_revenue")

#Output the number of stores whose annual revenue is greater than 1M
p Store.where("annual_revenue > ?", 1000000).count.to_s




