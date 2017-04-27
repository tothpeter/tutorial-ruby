require './exercise'

describe Exercise do
  describe ".mod_checker" do
    it "returns the first value divisible by 12 and 16" do
      expect(Exercise.mod_checker(1..200, 12, 16)).to eq(48)
      expect(Exercise.mod_checker(1..120000, 200, 73)).to eq(14600)
    end
  end

  describe ".lcm" do
    it "reurns the least common multiple of 2 numbers" do
      expect(Exercise.send :lcm, 3, 4).to eq(12)
      expect(Exercise.send :lcm, 4, 3).to eq(12)
      expect(Exercise.send :lcm, 2, 6).to eq(6)
      expect(Exercise.send :lcm, 2, -6).to eq(6)
    end
  end
end
