class Exercise
  def self.num_counter list
    result = Hash.new 0

    list.each { |item| result[item] += 1 }

    result
  end

  def self.num_counter_with_inject list
    list.inject(Hash.new(0)) do |result, item|
      result[item] += 1
      result
    end
  end
end
