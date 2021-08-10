# 1
def count_prime_number_version1(array)
  prime_count = 0
  for item in array do

    next if item == 1 # 1 is not a prime number

    is_prime = true

    number = item - 1
    while number > 1
      if item % number == 0
        is_prime = false
        break
      else
        number = number - 1
      end
    end # break when finding a number or end when it's a prime num

    if is_prime
      prime_count += 1
    end
  end

  return prime_count
end

# 2
def count_prime_number(array)
  array.count do |item|
    is_prime(item)
  end
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

# 3
def count_prime_number_recursion(array)
  array.count do |item|
    is_prime_recursion(item, item - 1)
  end
end

def is_prime_recursion(item, number)

  puts "#{item} : #{number}"

  return false if item == 1
  return true if number == 1 # when there is not any number that can divide item

  return is_prime_recursion(item, number - 1) if item % number != 0
  # "item % number == 0" means the item is not a prime num.
end

# sum
def sum_prime_number(array)
  array.select { |item| is_prime(item) }.reduce(:+)
end

array = [1, 2, 3, 4, 5, 7]
# puts count_prime_number(array)
# count_prime_number_recursion(array)
puts sum_prime_number(array)
