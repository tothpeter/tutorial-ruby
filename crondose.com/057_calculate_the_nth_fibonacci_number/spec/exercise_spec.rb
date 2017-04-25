require './exercise'

describe Exercise do
  describe ".nth_fibonacci_recursive" do
    it "properly calculates the fibonacci values" do
      expect(Exercise.nth_fibonacci_recursive(1)).to eq(0)
      expect(Exercise.nth_fibonacci_recursive(2)).to eq(1)
      expect(Exercise.nth_fibonacci_recursive(12)).to eq(89)
    end
  end

  describe ".nth_fibonacci_iterative" do
    it "properly calculates the fibonacci values" do
      expect(Exercise.nth_fibonacci_iterative(1)).to eq(0)
      expect(Exercise.nth_fibonacci_iterative(2)).to eq(1)
      expect(Exercise.nth_fibonacci_iterative(12)).to eq(89)
    end
  end

  describe ".nth_fibonacci_with_reduce" do
    it "properly calculates the fibonacci values" do
      expect(Exercise.nth_fibonacci_with_reduce(1)).to eq(0)
      expect(Exercise.nth_fibonacci_with_reduce(2)).to eq(1)
      expect(Exercise.nth_fibonacci_with_reduce(12)).to eq(89)
    end
  end
end
