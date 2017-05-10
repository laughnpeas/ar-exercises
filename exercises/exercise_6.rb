require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60).save
@store1.employees.create(first_name: "John", last_name: "Travolta", hourly_rate: 40).save
@store2.employees.create(first_name: "Matt", last_name: "Damon", hourly_rate: 60).save
@store2.employees.create(first_name: "Sean", last_name: "Park", hourly_rate: 40).save
