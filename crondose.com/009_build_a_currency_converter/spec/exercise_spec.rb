require './exercise'

describe Exercise do
  describe ".perform" do
    it "formats currency for US, Japan, and UK" do
      expect(Exercise.perform(5000, "US")).to eq("$5000.00")
      expect(Exercise.perform(5000, "Japan")).to eq("¥5000")
      expect(Exercise.perform(5000, "UK")).to eq("£5000,00")
    end
  end

  describe ".perform_v2" do
    it "formats currency for US, Japan, and UK" do
      expect(Exercise.perform(5000, "US")).to eq("$5000.00")
      expect(Exercise.perform(5000, "Japan")).to eq("¥5000")
      expect(Exercise.perform(5000, "UK")).to eq("£5000,00")
    end
  end
end
