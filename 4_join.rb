require "csv"
require "./csv_table"

bib_number_to_time = {}
times = CSV.table("data/times.csv")
for row in times
  bib_number = row[:bib_number]
  time = row[:time]
  bib_number_to_time[bib_number] = time
end

cyclists = CSV.table("data/cyclists.csv")
for cyclist in cyclists
  name = cyclist[:first_name]
  bib_number = cyclist[:bib_number]
  time = bib_number_to_time[bib_number]
  if time
    puts "My name is #{name} and my time was #{time}."
  else
    puts "My name is #{name} and I didn't complete the race."
  end
end
