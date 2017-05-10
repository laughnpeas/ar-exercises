require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# create 3 more stores

Store.create(name: 'Surrey', annual_revenue: 224_000, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1_900_000, mens_apparel: true)
Store.create(name: 'Yaletown', annual_revenue: 430_000, mens_apparel: true, womens_apparel: true)

# fetch stores that carry men's apparel

@mens_stores = Store.where(mens_apparel: true)

# loop through stores, output name, annual revenue

@mens_stores.each { |store| puts "name: #{store.name} |  annual revenue: #{store.annual_revenue}"}

# fetch women's store less than $1M in annual revenue

@womens_stores = Store.where('womens_apparel = ? AND annual_revenue > ?', true, 1_000_000)

@womens_stores.each{ |store| puts "name: #{store.name}, annual_revenue: #{store.annual_revenue}"}
