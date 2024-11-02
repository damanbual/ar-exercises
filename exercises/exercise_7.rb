require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"


# Add validations to Store and Employee models

# Store model validations
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_mens_or_womens_apparel

  def must_carry_mens_or_womens_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "Store must carry at least one of men's or women's apparel")
    end
  end
end

# Employee model validations
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
end

# Ask user for a store name and try to create an invalid store
puts "Please enter a store name:"
store_name = gets.chomp

new_store = Store.create(name: store_name)
if new_store.errors.any?
  puts "Error(s) prevented the store from being saved:"
  new_store.errors.full_messages.each do |message|
    puts "- #{message}"
  end
end