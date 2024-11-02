require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Total revenue for all stores
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for all stores: $#{total_revenue}"

# Average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)
puts "Average annual revenue for all stores: $#{average_revenue}"

# Number of stores generating $1M or more in annual revenue
high_revenue_stores = Store.where("annual_revenue >= ?", 1_000_000).count
puts "Number of stores generating $1M or more: #{high_revenue_stores}"