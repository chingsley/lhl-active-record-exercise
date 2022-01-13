require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_7'
require_relative './exercise_6'


puts "Exercise 7"
puts "----------"

emp = @store1.employees.create(first_name: "Biyi", last_name: "Lawman", hourly_rate: 45)
puts emp.password