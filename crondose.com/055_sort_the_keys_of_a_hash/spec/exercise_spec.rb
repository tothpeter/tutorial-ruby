require './exercise'

describe Exercise do
  collection = {
    some_key: 'Anything',
    "string key" => 'Anything',
    8383 => 'Does not matter'
  }

  describe ".key_sorter" do
    it "sorts a set of hash keys by length" do
      expected_output = [ 8383, :some_key, "string key" ]

      expect(Exercise.key_sorter(collection)).to eq(expected_output)
    end
  end

  describe ".key_sorter_convert_to_string" do
    it "sorts a set of hash keys by length" do
      expected_output = [ "8383", "some_key", "string key" ]

      expect(Exercise.key_sorter_convert_to_string(collection)).to eq(expected_output)
    end
  end
end
