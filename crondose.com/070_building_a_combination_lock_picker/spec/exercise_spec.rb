require './exercise'

describe Exercise do
  describe ".lockpick_with_factorial" do
    it "tells you how many guesses it could take to guess the combination when given any count of numbers" do
      potential_values_for_combination = [14, 9, 29, 44, 2, 33]
      expect(Exercise.lockpick_with_factorial(potential_values_for_combination)).to eq(120)
    end
  end

  describe ".lockpick" do
    it "tells you how many guesses it could take to guess the combination when given three numbers" do
      potential_values_for_combination = [14, 9, 29]
      expect(Exercise.lockpick(potential_values_for_combination)).to eq(6)
    end

    it "tells you how many guesses it could take to guess the combination when given any count of numbers" do
      potential_values_for_combination = [14, 9, 29, 44, 2, 33]
      expect(Exercise.lockpick(potential_values_for_combination)).to eq(120)
    end

    it "tells you the potential combinations if combinations is marked true" do
      potential_values_for_combination = [14, 9, 29]
      expect(Exercise.lockpick(potential_values_for_combination, combinations: true)).to eq([[14, 9, 29], [14, 29, 9], [9, 14, 29], [9, 29, 14], [29, 14, 9], [29, 9, 14]])
    end
  end
end
