require './exercise'

describe Exercise do
  describe ".large_number_processor" do
    it "accurately multiplies 2 large numbers" do
      val_1 = "10.0987345897234093284023"
      val_2 = "42.0987345897234093284023"
      expect(Exercise.large_number_processor(val_1, val_2)).to eq("425.14394718482513504388005529072886672947064529")
    end
  end
end
