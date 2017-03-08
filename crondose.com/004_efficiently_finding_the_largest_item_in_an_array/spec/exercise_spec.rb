require './exercise'

describe Exercise do
  describe ".perform" do
    it "finds the max element in a list" do
      list = [1, 2, 9, 2, 7]

      expect(Exercise.perform(list)).to eq(9)
    end
  end
end
