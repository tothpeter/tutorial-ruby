require './exercise'

describe Array do
  let(:arr) { [1, 2, 3] }

  describe "#alt_include?" do
    it "combines two arrays to generate a hash" do
      expect(arr.alt_include?(1)).to eq(true)
      expect(arr.alt_include?(4)).to eq(false)
    end
  end

  describe "#alt_include_with_each?" do
    it "combines two arrays to generate a hash" do
      expect(arr.alt_include_with_each?(1)).to eq(true)
      expect(arr.alt_include_with_each?(4)).to eq(false)
    end
  end
end
