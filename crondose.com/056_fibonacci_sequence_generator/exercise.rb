class Exercise
  def self.fibonacci_list_with_inject num
    num.times.inject([0, 1]) do |fibonacci_list|
      fibonacci_list << fibonacci_list[-2] + fibonacci_list[-1]
    end
  end

  def self.fibonacci_list_iterative num
    fibonacci_numbers = [0, 1]

    num.times do
      fibonacci_numbers << fibonacci_numbers[-2] + fibonacci_numbers[-1]
    end

    fibonacci_numbers
  end

  def self.fibonacci_list_recursive num, fibonacci_numbers = [0, 1]
    fibonacci_numbers << fibonacci_numbers[-2] + fibonacci_numbers[-1]

    fibonacci_list_recursive(num - 1, fibonacci_numbers) if num > 1

    fibonacci_numbers
  end
end
