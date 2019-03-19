require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Darren", last_name: "Picard", hourly_rate: 75)
@store1.employees.create(first_name: "Cristof", last_name: "Huklberry", hourly_rate: 39)
@store1.employees.create(first_name: "Brayden", last_name: "Something", hourly_rate: 50)
@store2.employees.create(first_name: "Gideon", last_name: "Bithmus", hourly_rate: 55)
@store2.employees.create(first_name: "Paulyn", last_name: "Franky", hourly_rate: 70)
@store2.employees.create(first_name: "Frank", last_name: "Pug", hourly_rate: 100)




