require './exercise'

describe Exercise do
  let(:abc) { [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ] }
  describe ".generate_aplhabet" do
    it "it generatres the ABC" do
      expect(Exercise.generate_aplhabet).to eq(abc)
    end
  end

  describe ".generate_aplhabet_shorter" do
    it "it generatres the ABC" do
      expect(Exercise.generate_aplhabet_shorter).to eq(abc)
    end
  end
end
