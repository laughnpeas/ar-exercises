require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Please, enter store name: eg, Vancouver, Richmond, Surrey..."
store = gets.chomp
new_store = Store.create(name: store, annual_revenue: 50)

if new_store.errors.any?
  puts "Error has occured"
  puts new_store.errors.full_messages
else
  puts "New store has created"
  puts new_store.inspect
end
