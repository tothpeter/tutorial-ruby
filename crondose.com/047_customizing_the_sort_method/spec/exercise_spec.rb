require './exercise'

describe Exercise do
  describe ".weird_alphabet" do
    it 'creates and sorts the alphabet, but places the letter k at the end' do
      expect(Exercise.weird_alphabet.last).to eq('k')
      expect(Exercise.weird_alphabet.first).to eq('a')
    end
  end
end
