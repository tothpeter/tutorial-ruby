require './exercise'

describe Array do
  describe "#my_rotate" do
    it "rotates the index values for each of the array elements" do
      expect([1, 2, 3].my_rotate(2)).to eq([3, 1, 2])
    end
  end
end
