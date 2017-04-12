require './exercise'

describe Array do
  describe "#index_hash" do
    it 'converts an array to a hash, with the keys being the index and the value being the element' do
      arr = %w{the quick brown fox fox}
      expected_output = {
        0 => "the",
        1 => "quick",
        2 => "brown",
        3 => "fox",
        4 => "fox"
      }

      expect(arr.index_hash).to eq(expected_output)
    end
  end
end
