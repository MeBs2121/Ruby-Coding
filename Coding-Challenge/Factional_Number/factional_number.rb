# No.1
def factional(number)
  result = number
  while number > 1
    result = result * (number - 1)
    number = number - 1
  end
  result
end
# puts factional(5)

# No.2
def factional_v2(number)
  result = number
  (1..(number - 1)).each do |item|
    result = result * item
  end
  result
end

# puts factional_v2(5)

# No.3
def factional_v3(number)
  number.downto(1).reduce(:*)
end
# puts factional_v3(5)

# No.4
def factional_v4(number)
  number == 0 ? 1 : number * factional_v4(number - 1)
end

puts factional_v4(5)
