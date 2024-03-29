require "csv"
require "./csv_table"

cyclists = CSV.table("data/cyclists.csv")

for cyclist in cyclists
  name = cyclist[:first_name]
  age = cyclist[:racing_age]

  puts "My name is #{name} and I am #{age} years old."
end
