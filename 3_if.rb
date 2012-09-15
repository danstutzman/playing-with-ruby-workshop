require "csv"
require "./csv_table"

cyclists = CSV.table("data/cyclists.csv")
cyclists = cyclists.sort_by { |cyclist| cyclist[:bib_number] }

puts "<html>"
puts "<body>"

for cyclist in cyclists
  name = cyclist[:first_name]
  url = cyclist[:rider_url]
  num = cyclist[:bib_number]
  age = cyclist[:racing_age]

  if cyclist[:has_photo] == "TRUE"
    puts "<div style='width:110px;height:160px;float:left'>"
    puts "<a href='#{url}'>#{name}</a> (#{age})<br/>"
    puts "<img src='photos/#{num}.jpeg'/>"
    puts "</div>"
  end
end

puts "</body>"
puts "</html>"
