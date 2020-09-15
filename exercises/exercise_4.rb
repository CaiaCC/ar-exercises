require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store_surrey = Store.create(
	name: "Surrey", 
	annual_revenue: 224000,
	mens_apparel: false,
	womens_apparel: true
)
store_whistler = Store.create(
	name: "Whistler", 
	annual_revenue: 1900000,
	mens_apparel: true,
	womens_apparel: false
)
store_yaletown = Store.create(
	name: "Yaletown", 
	annual_revenue: 190000,
	mens_apparel: true,
	womens_apparel: true
)

@mens_stores = Store.where(mens_apparel: true,
	womens_apparel: false).order(:id)

@mens_stores.each{|store| puts "Store name: #{store.name}, Annual revenue: #{store.annual_revenue}"}

@womens_stores = Store.where(womens_apparel: true).having("annual_revenue < ?", 1000000).order(annual_revenue: :desc)


