require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# output the total revenue of the entire stores

total = Store.all.sum(:annual_revenue)
puts "Total revenue of all stores is #{total}"
# output the average annual revenue for all stores

num_stores = Store.count
puts "Average of annual revenue of all stores is #{total/num_stores}"

# output the numer of stores which generating $1M or more in annual revenue

puts Store.where('annual_revenue > ?', 1_000_000).count

