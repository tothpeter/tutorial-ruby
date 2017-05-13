require './exercise'

describe Array do
  describe "#array_range_finder" do
    it "returns an array with the high and low range" do
      arr = [5, 1, 3, 11, 100, 23]
      expect(arr.array_range_finder).to eq([1, 100])
    end
  end
end
