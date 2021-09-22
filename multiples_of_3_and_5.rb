def solution(number)
  return 0 if number < 2
  (1...number).select { |x| (x % 3).zero? || (x % 5).zero? }.reduce(:+)
end