require "csv"
require "./csv_table"

cyclists = CSV.table("data/cyclists.csv")
numerator = 0
denominator = 0
cyclists.each do |cyclist|
  numerator += cyclist[:racing_age]
  denominator += 1
end
average_age = numerator / denominator
puts "The average age was #{average_age}."
