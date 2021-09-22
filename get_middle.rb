def get_middle(str)
  str = str.chars
  index = str.count / 2
  if str.count == 1
    str.join
  elsif str.count.even?
    "#{str[index - 1]}#{str[index]}"
  else
    "#{str[index]}"
  end
end