require './exercise'

describe Exercise do
  alphabet = ('a'..'z')
  expected_output = %w{b c d f g h j k l m n p q r s t v w x y z}

  describe ".vowel_remover" do
    it "removes vowels from the alphabet" do
      expect(Exercise.vowel_remover(alphabet)).to eq(expected_output)
    end
  end

  describe ".vowel_remover_with_grep" do
    it "removes vowels from the alphabet" do
      expect(Exercise.vowel_remover_with_grep(alphabet)).to eq(expected_output)
    end
  end
end
