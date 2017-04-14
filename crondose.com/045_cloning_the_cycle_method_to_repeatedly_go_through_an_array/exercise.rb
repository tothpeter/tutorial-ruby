class Exercise
  def self.cloned_cycle collection, times_to_clone
    collection.to_a * times_to_clone
  end

  def self.cloned_cycle_with_loop collection, times_to_clone
    result = []

    times_to_clone.times do
      result += collection.to_a
    end

    result
  end
end
