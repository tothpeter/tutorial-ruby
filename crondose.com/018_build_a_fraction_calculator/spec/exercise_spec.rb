require './exercise'

describe Exercise do
  describe ".fraction_calculator" do
    it "performs calculation on two fractions" do
      expect(Exercise.fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
      expect(Exercise.fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
      expect(Exercise.fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
      expect(Exercise.fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
    end
  end
end

describe ExerciseWithRational do
  describe ".fraction_calculator" do
    it "performs calculation on two fractions" do
      expect(ExerciseWithRational.fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
      expect(ExerciseWithRational.fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
      expect(ExerciseWithRational.fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
      expect(ExerciseWithRational.fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
    end
  end
end
