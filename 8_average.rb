require "csv"
require "./csv_table"

cyclists = CSV.table("data/cyclists.csv")
numerator = 0
denominator = 0
for cyclist in cyclists
  numerator += cyclist[:racing_age]
  denominator += 1
end
average_age = numerator / denominator
puts "The average age was #{average_age}."
