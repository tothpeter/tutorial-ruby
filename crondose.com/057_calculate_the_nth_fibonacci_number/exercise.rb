class Exercise
  def self.nth_fibonacci_recursive num
    if num == 1 || num == 2
      num - 1
    else
      nth_fibonacci_recursive(num - 2) + nth_fibonacci_recursive(num - 1)
    end
  end

  def self.nth_fibonacci_iterative num
    a = 0
    b = 1
    fibonacci_number = num - 1

    (num - 2).times do
      fibonacci_number = a + b
      a = b
      b = fibonacci_number
    end

    fibonacci_number
  end

  def self.nth_fibonacci_with_reduce num
    return num - 1 if [1, 2].include? num

    (num - 2).times.reduce([0, 1]) { |fib_numbers| fib_numbers << fib_numbers.last(2).reduce(:+) }.last
  end
end
