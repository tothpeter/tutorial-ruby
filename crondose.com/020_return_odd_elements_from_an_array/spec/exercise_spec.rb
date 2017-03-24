require './exercise'

describe Array do
  describe ".odd_selector" do
    it "returns only the odd values" do
      expect(Array(1..10).odd_selector).to eq([1, 3, 5, 7, 9])
    end
  end
end
