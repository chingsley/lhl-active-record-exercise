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
# emp = @store1.employees.create(first_name: "Boris", last_name: "Johnson", hourly_rate: 39)
emp = Employee.create(first_name: "Boris", last_name: "Johnson", hourly_rate: 39)
puts emp.valid? # false, b/c hourly_rate is less than 40


store = Store.create(name: "Bu", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
puts store.valid? # false, b/c name "Bu" is less than 3 character long

store2 = Store.create(name: "BonJovi", annual_revenue: 78792.220, mens_apparel: true, womens_apparel: true)
puts store2.valid? # false, b/c annual_revenue (78792.220) is not an integer


store3 = Store.create(name: "JoviBon", annual_revenue: -78792, mens_apparel: true, womens_apparel: true)
puts store3.valid? # false, b/c annual_revenue (-78792) is not greater than 0

store4 = Store.create(name: "JoviBon", annual_revenue: 78792, mens_apparel: false, womens_apparel: false)
puts store4.valid? # false, b/c mens_apparel and womens_apparel cannot be both false
puts store4.errors.full_messages # "A store must carry at least one of men's or women's apparel"


puts "Provide store name:"
store_name = gets.chomp
store5 = Store.create(name: store_name, mens_apparel: true, womens_apparel: true)
puts store5.valid?
puts store5.errors.full_messages

if store5.invalid?
  store5.errors.full_messages.each do |error|
    puts error
  end
end


