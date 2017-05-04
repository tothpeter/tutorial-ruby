require './exercise'

describe Exercise do
  describe ".mod_checker" do
    it "returns a list of values divisible by 12 and 16" do
      expect(Exercise.mod_checker(1..200, 12, 16)).to eq([48, 96, 144, 192])
      expect(Exercise.mod_checker(1..120000, 200, 73)).to eq([14600, 29200, 43800, 58400, 73000, 87600, 102200, 116800])
    end
  end
end
