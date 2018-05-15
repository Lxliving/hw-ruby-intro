# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result=0
  if arr.length!=0
    for i in 0..arr.length-1 do
      result += arr[i]
	  end
  end
  return result
end

def max_2_sum arr
  result=0
  if arr.length==1
    result=arr[0]
  elsif arr.length==2
    result=arr[0]+arr[1]
  elsif arr.length>2
    t1=arr[0]
    t2=arr[1]
    if t1<t2   # keep t1>=t2
      t1=arr[1]
      t2=arr[0]
    end
    for i in 2..arr.length-1 do
      if t1<=arr[i]
        t2=t1
        t1=arr[i]
      end
	  end
	  result=t1+t2
  end
  return result
end

def sum_to_n? arr, n
  result=false
  if arr.length>1
    for i in 0..arr.length-2 do
      for j in i+1..arr.length-1 do
        if arr[i]+arr[j]==n
          result=true
        end
      end
    end
  end
  return result
end

# Part 2

def hello(name)
  a="Hello, "+name
  return a
end

def starts_with_consonant? s
  result=false
  start1=/\A[a-zA-Z]/.match(s)
  if start1!=nil
    if (/[^aeiouAEIOU]/=~start1[0]) == 0
      result=true
    end
  end
  
  return result
end

def binary_multiple_of_4? s
  result=false
  if (/[^10]/.match(s))==nil
    # 是二进制数或者为空
    if s.length!=0
      if s.to_i(2)%4==0
        result=true
      end
    end
  end
  
  return result
end

# Part 3

class BookInStock

  def initialize(isbn1,price1)

	  raise ArgumentError unless isbn1 != ''
	  raise ArgumentError unless price1>0

	  @isbn=isbn1
	  @price=price1

  end
  
  #getter
  def isbn
    @isbn
  end

  def price
    @price
  end
  
  #setter
  def isbn=(value)
	  raise ArgumentError unless value != ''
	  @isbn=value
  end

  def price=(value)
	  raise ArgumentError unless value>0
	  @price=value
  end
  
  def price_as_string
    price_s='$'+sprintf("%.2f",@price)
    return price_s
  end
end
