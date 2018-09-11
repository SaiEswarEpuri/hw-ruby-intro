# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum1=0
  arr.each{|x| sum1+=x}
  sum1
end

def max_2_sum arr
  if arr.length==0
    return 0
  elsif arr.length==1
    return arr[0]
  end
  arr.sort!{|x,y| y<=>x }
  arr[0]+arr[1]
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length <2
    return false
  end
  for i in 0...arr.length
    for j in i+1...arr.length
    if arr[i]+arr[j] == n
      return true
    end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
   if s.length==0 
    return false
   end
  hash1=Hash.new
  ['a','e','i','o','u'].each { |x| 
  hash1[x]=1
  hash1[x.upcase!]=1
  }
  unless /[a-z]/.match(s[0].downcase)
    return false
  end
  if hash1[s[0]]==nil 
    return true 
  else 
    return false 
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length ==1
    if s[0]=="0"
      return true
    end 
  end 
  hash_1={'0'=>0,'1'=>1}
  val=true
  s1=s.chars
  s1.each {|x| val=false if hash_1[x]==nil }
  if val == true
    if s.length <=2 
      return false
    else 
      if s[-1]=="0" && s[-2]=="0"
        return true
      else 
        return false
      end
    end
  else 
    return false 
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn,price)
    if price <= 0 || isbn.length ==0
      raise ArgumentError
    end
    @isbn=isbn
    @price=price
  end
  def price_as_string 
    val=Float(@price).round(2).to_s
    val+="0" if val[-2]=="."
    return "$#{val}" 
  end
end