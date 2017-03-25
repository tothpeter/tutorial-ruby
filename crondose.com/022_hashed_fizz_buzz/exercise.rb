class Exercise
  def self.hashed_fizz_buzz last_num
    result = {}

    (1..last_num).each do |i|
      if i % 15 == 0
        result[i] = "FizzBuzz"
      elsif  i % 5 == 0
        result[i] = "Buzz"
      elsif  i % 3 == 0
        result[i] = "Fizz"
      else
        result[i] = i
      end
    end

    result
  end

  def self.simple_fizz_buzz last_num
    result = []

    (1..last_num).each do |i|
      if i % 15 == 0
        result << "FizzBuzz"
      elsif  i % 5 == 0
        result << "Buzz"
      elsif  i % 3 == 0
        result << "Fizz"
      else
        result << i
      end
    end

    result.join ","
  end

  def self.simple_fizz_buzz_with_step_loops last_num
    result = (1..last_num).to_a

    (2..last_num).step(3) { |i| result[i] = "Fizz" }

    (4..last_num).step(5) { |i| result[i] = "Buzz" }

    (14..last_num).step(15) { |i| result[i] = "FizzBuzz" }

    result.join ","
  end
end
