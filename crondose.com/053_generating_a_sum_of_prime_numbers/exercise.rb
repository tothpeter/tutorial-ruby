require "prime"

class Exercise
  def self.prime_sum num
    Prime.each(num).reduce(:+)
  end
end
