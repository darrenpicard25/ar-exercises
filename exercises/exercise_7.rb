require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
while true
  puts "Enter a store: "
  print "==>"
  store_name = gets.chomp
  puts "Enter Annual Revenue: "
  print "==>"
  revenue = gets.chomp
  puts "Do you sell Mens Clothes?"
  print "==>"
  men_clothes = gets.chomp
  puts "Do you sell Womens Clothes"
  print "==>"
  womens_clothes = gets.chomp
  @customStore = Store.create name: store_name, annual_revenue: revenue, womens_apparel: womens_clothes, mens_apparel: men_clothes

  if @customStore.errors.messages.length == 0
    puts "We have created your store"
    puts "Thanks"
    break
  end
  puts "An error occured because you: "
  @customStore.errors.  messages.each do |key, value|
    puts value
  end
end

puts @customStore.inspect



# @emplyee1 = @store1.employees.create!(first_name: "", last_name: "Virani", hourly_rate: 60)

# puts @emplyee1.errors.inspect