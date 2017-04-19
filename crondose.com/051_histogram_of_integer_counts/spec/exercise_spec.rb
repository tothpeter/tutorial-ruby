require './exercise'

describe Exercise do
  input = [1, 4, 1, 3, 2, 1, 4, 5, 4, 4, 5, 4]

  expected_output = {
    1=>3,
    4=>5,
    3=>1,
    2=>1,
    5=>2
  }

  describe ".num_counter" do
    it "returns a hash that contains the number of occurrences for each array element" do
      expect(Exercise.num_counter(input)).to eq(expected_output)
    end
  end

  describe ".num_counter_with_inject" do
    it "returns a hash that contains the number of occurrences for each array element" do
      expect(Exercise.num_counter_with_inject(input)).to eq(expected_output)
    end
  end
end
