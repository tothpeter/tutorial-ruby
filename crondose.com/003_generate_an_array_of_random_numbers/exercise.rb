class Exercise
  def self.perform element_count, bottom_limit, top_limit
    Array.new(element_count) { rand bottom_limit..top_limit }
  end
end
