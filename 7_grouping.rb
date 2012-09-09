require "csv"
require "./csv_table"

age_to_cyclists = {}
cyclists = CSV.table("data/cyclists.csv")
for cyclist in cyclists
  age = cyclist[:racing_age]
  age_to_cyclists[age] ||= []
  age_to_cyclists[age].push(cyclist)
end

ages = age_to_cyclists.keys
for age in ages.sort
  cyclists_this_age = age_to_cyclists[age]
  puts "#{cyclists_this_age.size} cyclists were #{age} years old."
  cyclists_this_age.each do |cyclist|
    puts "  #{cyclist[:short_name]}"
  end
end
puts "The oldest cyclist was #{ages.max} years old."
puts "The youngest cyclist was #{ages.min} years old."
