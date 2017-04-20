require './exercise'

describe Exercise do
  describe ".vowel_remover" do
    it "sums the sequence of prime numbers" do
      expect(Exercise.prime_sum 22).to eq(77)
      expect(Exercise.prime_sum 42).to eq(238)
    end
  end
end
