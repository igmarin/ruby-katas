def order_weight(strng)
  strng.split(' ').sort do |a, b|
    num1 = a.to_i.digits.sum
    num2 = b.to_i.digits.sum

    num1 < num2 || num1 == num2 && a == [a, b].sort[0] ? -1 : 1
  end.join(' ')
end

puts order_weight("103 123 4444 99 2000") #, "2000 103 123 4444 99")
puts order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")#, "11 11 2000 10003 22 123 1234000 44444444 9999")