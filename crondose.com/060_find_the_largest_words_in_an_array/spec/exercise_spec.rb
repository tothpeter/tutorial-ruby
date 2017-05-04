require './exercise'

describe Exercise do
  describe ".longest_words_with_max_by" do
    it "returns the longest words from an array" do
      strings = %w{a group of words that are variable length}
      expect(Exercise.longest_words_with_max_by strings, 3).to eq(["variable", "length", "words"])
    end
  end

  describe ".longest_words_with_sort_by" do
    it "returns the longest words from an array" do
      strings = %w{a group of words that are variable length}
      expect(Exercise.longest_words_with_sort_by strings, 3).to eq(["variable", "length", "group"])
    end
  end
end
