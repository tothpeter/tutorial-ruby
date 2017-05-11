class Exercise
  def self.lockpick potential_values_for_combination, combinations = false
    if combinations
      potential_values_for_combination.permutation(3).to_a
    else
      potential_values_for_combination.permutation(3).size
    end
  end

  def self.lockpick_with_factorial potential_values_for_combination
    (1..potential_values_for_combination.length).last(3).reduce :*
  end
end
