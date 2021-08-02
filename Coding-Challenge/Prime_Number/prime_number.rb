def count_prime_number(array)
  array.count do |item|
    is_prime(item)
  end

  # prime_count = 0
  # for item in array do

  #   next if item == 1 # 1 is not a prime number

  #   is_prime = true

  #   number = item - 1
  #   while number > 1
  #     if item % number == 0
  #       is_prime = false
  #       break
  #     else
  #       number = number - 1
  #     end
  #   end # break when finding a number or end when it's a prime num

  #   if is_prime
  #     prime_count += 1
  #   end
  # end

  # return prime_count
end

def is_prime(item)
  return false if item == 1

  (2..(item - 1)).each do |number|
    if item % number == 0
      return false
    end
  end

  return true
end


array = [1, 2, 3, 4, 5]
puts count_prime_number(array)