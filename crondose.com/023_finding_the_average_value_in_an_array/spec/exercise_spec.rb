require './exercise'

describe Array do
  describe "#average" do
    it "returns the average value from an array" do
      arr = [ 100, 50, 75 ]

      expect(arr.average).to eq(75)
    end
  end
end
