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
@store1.employees.create(first_name: "Tom", last_name: "B", hourly_rate: 0)
@store1.employees.create(first_name: "Employee1", last_name: "Emp1", hourly_rate: 10000)

@store2.employees.create(first_name: "Emp2", last_name: "222", hourly_rate: 35)
@store2.employees.create(first_name: "Emp3", last_name: "333", hourly_rate: 20)
