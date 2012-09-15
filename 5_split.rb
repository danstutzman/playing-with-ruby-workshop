require "csv"
require "./csv_table"

cyclists = CSV.table("data/cyclists.csv")

for cyclist in cyclists
  last_name, first_initial = cyclist[:short_name].split(", ")
  first_name = cyclist[:first_name]

  puts "My full name is #{first_name} #{last_name}."
end
