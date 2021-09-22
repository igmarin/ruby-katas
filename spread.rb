def get_middle(str)
  str = str.chars
  index = str.count / 2
  if str.count == 1
    str
  elsif str.count.even?
     "#{str[index - 1]}#{str[index]}"
  else
     "#{str[index]}"
  end
end

puts get_middle("A")
puts get_middle("test")
puts get_middle("testing")
puts get_middle("middle")