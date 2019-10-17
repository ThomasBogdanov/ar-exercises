require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Surrey = Store.create do |s|
  s.name = "Surrey"
  s.annual_revenue = 224000
  s.mens_apparel = false
  s.womens_apparel = true
end

Whistler = Store.create do |s|
  s.name = "Whistler"
  s.annual_revenue = 126000
  s.mens_apparel = true
  s.womens_apparel = false
end

Yaletown = Store.create do |s|
  s.name = "Yaletown"
  s.annual_revenue = 190000
  s.mens_apparel = true
  s.womens_apparel = true
end

@mens_stores = Store.where(mens_apparel: true)

puts "Output"

@mens_stores.each do |store|
  print store.name
  print store.annual_revenue
end

@womens_stores = Store.where(womens_apparel: true)
@womens_stores = @womens_stores.where("annual_revenue < ?", 100000)
puts @womens_stores.count