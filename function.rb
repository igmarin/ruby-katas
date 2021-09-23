def function(p, variable)
  p.call(*variable)
end

puts function(->(x, y) { x * y}, [2, 4])
