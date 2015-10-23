# Implement your procedural solution here!
def fibonacci(num)
  array = [1,2]
  first = array[-2]
  second = array[-1]

  while second + first < num  
    array << first + second
    first = array[-2]
    second = array[-1]
  end

  array
end

def even_fibonacci_sum(num)
  fibonacci(num).select {|x| x.even?}.inject(:+)
end