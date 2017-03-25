require './exercise'

describe Exercise do
  describe ".hashed_fizz_buzz" do
    it "generates a fizz buzz hash" do
      final_hash = {
        1 => 1,
        2 => 2,
        3 => "Fizz",
        4 => 4,
        5 => "Buzz",
        6 => "Fizz",
        7 => 7,
        8 => 8,
        9 => "Fizz",
        10 => "Buzz",
        11 => 11,
        12 => "Fizz",
        13 => 13,
        14 => 14,
        15 => "FizzBuzz",
        16 => 16
      }

      expect(Exercise.hashed_fizz_buzz(16)).to eq(final_hash)
    end
  end

  let(:final_list) {
    [
      1,
      2,
      "Fizz",
      4,
      "Buzz",
      "Fizz",
      7,
      8,
      "Fizz",
      "Buzz",
      11,
      "Fizz",
      13,
      14,
      "FizzBuzz",
      16
    ].join ","
  }

  describe ".simple_fizz_buzz" do
    it "generates a fizz buzz list" do
      expect(Exercise.simple_fizz_buzz(16)).to eq(final_list)
    end
  end

  describe ".simple_fizz_buzz_with_step_loops" do
    it "generates a fizz buzz list" do
      expect(Exercise.simple_fizz_buzz_with_step_loops(16)).to eq(final_list)
    end
  end
end
