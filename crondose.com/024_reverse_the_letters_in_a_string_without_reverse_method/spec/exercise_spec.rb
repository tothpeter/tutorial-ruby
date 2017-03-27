require './exercise'

describe String do
  describe "#alt_reverse_optimised" do
    it "reverses the letters of a string without using the reverse method" do
      expect("Hi there".alt_reverse).to eq("ereht iH")
    end
  end

  describe "#alt_reverse" do
    it "reverses the letters of a string without using the reverse method" do
      expect("Hi there".alt_reverse).to eq("ereht iH")
    end
  end
end
