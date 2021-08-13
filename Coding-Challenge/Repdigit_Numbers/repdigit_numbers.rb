def is_repdigit(number)
  array = number.to_s.split('').map(&:to_i)
  digit = array.first
  count = array.count { |number| number != digit }
  if count == 0
    return true
  else
    return false
  end
end

# puts is_repdigit(777)

def is_repdigit_v2(number)
  number.to_s.squeeze.length == 1
end

# puts is_repdigit_v2(444444)

def is_repdigit_v3(number)
  number.to_s.chars.uniq
end

puts is_repdigit_v3(444444)
