require './exercise'

describe Exercise do
  describe ".sum_generator" do
    it "returns a sum of digits, ranging from 0 through the argument value" do
      expect(Exercise.sum_generator(10)).to eq(55)
    end
  end
end
