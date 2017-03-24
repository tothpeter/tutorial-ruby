require './exercise'

describe Exercise do
  describe ".pseudo_random" do
    it "creates the same sequance of random numbers" do
      random_sequence = Exercise.pseudo_random 3

      expect(random_sequence.resume).to eq(37)
      expect(random_sequence.resume).to eq(12)
      expect(random_sequence.resume).to eq(72)
    end
  end
end
