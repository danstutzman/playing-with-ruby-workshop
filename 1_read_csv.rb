require 'csv'

cyclists = CSV.table('data/cyclists.csv')

cyclists.each do |cyclist|
  name = cyclist[:first_name]
  age = cyclist[:racing_age]

  puts "My name is #{name} and I am #{age} years old."
end
