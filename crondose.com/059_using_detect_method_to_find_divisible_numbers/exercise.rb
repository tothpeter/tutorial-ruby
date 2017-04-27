class Exercise
  def self.mod_checker list, num1, num2
    least_common_multiple = lcm num1, num2

    list.find do |item|
      item % least_common_multiple == 0
    end
  end

  private

  def self.lcm num1, num2
    bigger =  [num1, num2].max
    smaller = [num1, num2].min
    lcm = bigger

    loop do
      return lcm if lcm % smaller == 0
      lcm += bigger
    end
  end
end
