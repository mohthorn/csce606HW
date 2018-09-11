# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr_new=arr.sort
  if arr.length==0
    a=0
  else if arr.length==1
    a=arr[0]
  else
    a=arr_new[-1]+arr_new[-2]
    end
  end
  return a
end

def sum_to_n? arr, n
  # YOUR CODE HERE

  arr.combination(2).to_a.each do |a|
    if (sum(a) == n) 
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  ans_str="Hello, #{name}"
  return ans_str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  consonant = /^[^aeiou\d\W_]/i
  return true if consonant.match(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  flag=false
  if s=="0"
    flag= true
  else if /^[10]+$/.match(s) == nil
    flag=false
  else if (s[-1]=='0'&&s[-2]=='0')
    flag=true
  end
  end
  end

  return flag
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn,price)
    raise ArgumentError if(isbn.empty?||price<=0)
    @isbn=isbn
    @price=price
  end
  
  def price_as_string
    s="$%.2f" %@price
  end
  
end
