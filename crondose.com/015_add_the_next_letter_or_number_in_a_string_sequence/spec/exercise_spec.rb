require './exercise'

describe Exercise do
  describe ".increment_value" do
    it "it generatres the ABC" do
      expect(Exercise.increment_value "abcde").to eq("abcdef")
      expect(Exercise.increment_value "123").to eq("1234")
    end
  end
end
