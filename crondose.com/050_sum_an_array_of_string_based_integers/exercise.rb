class Exercise
  def self.string_sum list
    list.reduce(0) do |sum, item|
      sum + item.to_i
    end
  end

  def self.string_sum_with_map list
    list.map(&:to_i).reduce(:+)
  end
end
