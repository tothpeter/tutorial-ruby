require './exercise'

describe Array do
  describe "#greater_than_10" do
    it "counts how many elements are greater than 10" do
      arr = [ 100, 2, 5, 10, 11 ]
      expect(arr.greater_than_10).to eq(2)
    end
  end
end
