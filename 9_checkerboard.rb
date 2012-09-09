puts "<html>"
puts "<head><meta http-equiv='X-UA-Compatible' content='IE=9'></head>"
puts "<body>"
puts "<svg xmlns='http://www.w3.org/2000/svg' version='1.1' width='900' height='500'>"

for outer_x in 1..10
  for outer_y in 1..10
    if (outer_x + outer_y) % 2 == 0
      color = "red"
    else
      color = "black"
    end
    
    xys = [
      [0, 0],
      [40, 0],
      [40, 40],
      [0, 40]
    ]

    xys = xys.collect do |xy|
      x = xy[0]
      y = xy[1]
      [x + (outer_x * 50), y + (outer_y * 50)]
    end

    points = xys.collect do |xy|
      x = xy[0]
      y = xy[1]
      "#{x},#{y}"
    end

    puts "<polygon points='#{points.join(' ')}' fill='#{color}' />"
  end
end

puts "</svg>"
puts "</body>"
puts "</html>"
