class Exercise
  def self.mod_checker list, num1, num2
    lcm = num1.lcm num2

    list.select do |item|
      item % lcm == 0
    end
  end
end
