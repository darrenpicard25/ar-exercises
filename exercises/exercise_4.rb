require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)

#One way of doing it
store4 = Store.new
store4.name = 'Surrey'
store4.annual_revenue = 224000
store4.mens_apparel = false
store4.womens_apparel = true
store4.save

#Other easier way
store5 = Store.create name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false
store6 = Store.create name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true


@mens_stores = Store.where mens_apparel: true

@womens_stores = Store.where("womens_apparel = true and annual_revenue < ?",  1000000)

puts "Mens Stores"
puts"----------------------"
@mens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end
puts "Womens Stores"
puts"----------------------"
@womens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end

