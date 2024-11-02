require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load the first store (id = 1) and assign it to @store1
@store1 = Store.find(1)

# Load the second store (id = 2) and assign it to @store2
@store2 = Store.find(2)

# Update the name of the first store
@store1.update(name: "Burnaby Central")

# Output the updated store name to verify the change
puts "Updated Store 1 Name: #{@store1.name}"