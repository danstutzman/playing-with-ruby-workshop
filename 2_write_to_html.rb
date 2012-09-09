require "csv"
require "./csv_table"

cyclists = CSV.table("data/cyclists.csv")
cyclists = cyclists.sort_by { |cyclist| cyclist[:bib_number] }

puts "<html>"
puts "<body>"

for cyclist in cyclists
  name = cyclist[:first_name]

  puts "<div style='width:110px;height:160px;float:left'>"
  puts "#{name}<br/>"
  puts "</div>"
end

puts "</body>"
puts "</html>"
