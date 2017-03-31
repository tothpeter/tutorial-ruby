require './exercise'

describe Exercise do
  describe ".multiplication_table" do
    it "combines two arrays to generate a hash" do
      expected_result = {
        1 => [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ],
        2 => [ 2, 4, 6, 8, 10, 12, 14, 16, 18, 20 ],
        3 => [ 3, 6, 9, 12, 15, 18, 21, 24, 27, 30 ]
      }

      expect(Exercise.multiplication_table(3)).to eq(expected_result)
    end
  end
end
