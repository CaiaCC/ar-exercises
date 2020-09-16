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
# class Employee < ApplicationRecord
#   validates :first_name, :last_name, :store_id, present: true
#   validates :hourly_rate, numericality: {only_integer: true, less_than_or_equal_to: 200, greater_than_or_equal_to: 40}
# end

# class Store < ApplicationRecord
#   validates :name, length: {minimum: 3}
#   validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
#   validate :must_carry_at_least_one_apparel

#   def must_carry_at_least_one_apparel
#     if !mens_apparel && !womens_apparel
#       errors.add(:mens_apparel, :womens_apparel, "Must carry at least one of the men's or women's apparel")
#     end
#   end
# end

print "Input a store name"
print ">"
new_store_name = gets.chomp
new_store = Store.create(name: new_store_name )
new_store.valid?
puts new_store.errors.messages
