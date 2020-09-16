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
@store2.employees.create(first_name: "Caia", last_name: "Chuang", hourly_rate: 20)
@store1.employees.create(first_name: "Trent", last_name: "You", hourly_rate: 40)
@store2.employees.create(first_name: "James P.", last_name: "Sullivan", hourly_rate: 90)
@store1.employees.create(first_name: "Trent", last_name: "You", hourly_rate: 40)
@store2.employees.create(first_name: "James P.", last_name: "Sullivan", hourly_rate: 90)
@store1.employees.create(first_name: "Randall", last_name: "Boggs", hourly_rate: 60)
@store2.employees.create(first_name: "Mike", last_name: "Wazowski", hourly_rate: 100)
@store1.employees.create(first_name: "Roz", last_name: "Monster", hourly_rate: 60)
@store2.employees.create(first_name: "Henrry J.", last_name: "Waternoose III", hourly_rate: 150)
@store1.employees.create(first_name: "Celia", last_name: "Mae", hourly_rate: 60)
@store2.employees.create(first_name: "George", last_name: "Sanderson", hourly_rate: 60)