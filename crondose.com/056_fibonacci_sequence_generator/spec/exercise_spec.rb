require './exercise'

describe Exercise do
  expected_fibonacci_list = [ 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ]

  describe ".fibonacci_list_with_inject" do
    it "properly calculates the fibonacci values" do
      expect(Exercise.fibonacci_list_with_inject(10)).to eq(expected_fibonacci_list)
    end
  end

  describe ".fibonacci_list_iterative" do
    it "properly calculates the fibonacci values" do
      expect(Exercise.fibonacci_list_iterative(10)).to eq(expected_fibonacci_list)
    end
  end

  describe ".fibonacci_list_recursive" do
    it "properly calculates the fibonacci values" do
      expect(Exercise.fibonacci_list_recursive(10)).to eq(expected_fibonacci_list)
    end
  end
end
