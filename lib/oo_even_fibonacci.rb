# Implement your object-oriented solution here!

class EvenFibonacci

  def initialize(num)
    @num = num
  end

  def fibonacci
    array = [1,2]
    first = array[-2]
    second = array[-1]

    while second + first < @num  
      array << first + second
      first = array[-2]
      second = array[-1]
    end

    array
  end

  def sum
    fibonacci.select {|x| x.even?}.inject(:+)
  end

end
