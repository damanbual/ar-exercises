require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Load the third store and assign it to an instance variable @store3
@store3 = Store.find(3)

# Use Active Record's destroy method to delete the third store
@store3.destroy

# Output the number of stores to confirm deletion
puts "Total stores after deletion: #{Store.count}"
