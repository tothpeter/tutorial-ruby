require './exercise'

describe Exercise do
  input = ['A sentence', 'broken into several', 'array elements']

  describe ".longest_word" do
    it "returns a list of values divisible by 12 and 16" do
      expect(Exercise.longest_word(input)).to eq('sentence')
    end
  end

  describe ".longest_word_with_flat_map" do
    it "returns a list of values divisible by 12 and 16" do
      expect(Exercise.longest_word_with_flat_map(input)).to eq('sentence')
    end
  end
end
