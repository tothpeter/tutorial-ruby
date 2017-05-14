class Exercise
  def self.duplicate_objects list
    list.map(&:to_sym)
  end
end
