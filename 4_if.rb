require 'csv'

cyclists = CSV.table('data/cyclists.csv')

puts '<html>'
puts '<head><meta http-equiv="X-UA-Compatible" content="IE=9"></head>'
puts '<body>'
puts '<svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="900" height="500">'

puts "<text x='0' y='290'>Age</text>"
age = 10
while age <= 50
  y = age * 5
  puts "<text x='0' y='#{y}'>#{age}</text>"
  age += 10
end

puts "<text x='880' y='15'>Bib</text>"
bib_number = 0
while bib_number <= 160
  x = (bib_number * 5) + 30
  puts "<text x='#{x}' y='15'>#{bib_number}</text>"
  bib_number += 10
end

cyclists.each do |cyclist|
  if cyclist[:racing_age]
    x = (cyclist[:bib_number] * 5) + 30
    y = cyclist[:racing_age] * 5
    if cyclist[:bib_number] >= 20 && cyclist[:bib_number] < 30
      puts "<circle cx='#{x}' cy='#{y}' r='5' style='fill:white;stroke:black'/>"
    else
      puts "<circle cx='#{x}' cy='#{y}' r='5' style='fill:blue'/>"
    end
  end
end

puts '</svg>'
puts '</body>'
puts '</html>'
