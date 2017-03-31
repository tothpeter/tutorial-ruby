class Exercise
  def self.multiplication_table num
    result = {}

    1.upto(num).each do |base_num|
      result[base_num] = (1..10).map { |j| base_num * j }
    end

    result
  end
end
