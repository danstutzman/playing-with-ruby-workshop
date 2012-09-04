require 'csv'

cyclists = CSV.table('data/cyclists.csv')

puts '<html>'
puts '<body>'

puts '<ul>'
cyclists.each do |cyclist|
  name = cyclist[:first_name]
  age = cyclist[:racing_age]

  puts '<li>'
  puts "My name is #{name} and I am #{age} years old."
  puts '</li>'
end
puts '</ul>'

puts '</body>'
puts '</html>'