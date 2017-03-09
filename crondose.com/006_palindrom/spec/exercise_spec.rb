require './exercise'

describe Exercise do
  describe ".perform" do
    it "returns true if the word is a palindrome, false if not" do
      expect(Exercise.perform("Aoa")).to eq(true)
      expect(Exercise.perform("Aooa")).to eq(true)
      expect(Exercise.perform("")).to eq(true)
      expect(Exercise.perform("bot-a-palindrome")).to eq(false)
    end
  end

  describe ".perform_with_loop" do
    it "returns true if the word is a palindrome, false if not" do
      expect(Exercise.perform("Aoa")).to eq(true)
      expect(Exercise.perform("Aooa")).to eq(true)
      expect(Exercise.perform("")).to eq(true)
      expect(Exercise.perform("bot-a-palindrome")).to eq(false)
    end
  end
end
