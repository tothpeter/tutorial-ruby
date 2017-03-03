require './exercise'

describe Exercise do
  describe ".perform" do
    examples_array_1 = ["A1", "A2"]
    examples_array_2 = ["B1", "B2"]

    it "zips the arrays" do
      output = Exercise.perform(examples_array_1, examples_array_2)

      expect(output.first).to eq([examples_array_1.first, examples_array_2.first])
    end
  end
end
