require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.

totalRev = Store.sum(:annual_revenue)
puts "Company's total revenue is #{totalRev}"

aveRev = totalRev/Store.count
puts "Company's average revenue is #{aveRev}"

count = Store.where("annual_revenue >= 10000000").count
puts "Company has #{count} stores with annual revenue more than 1M"

