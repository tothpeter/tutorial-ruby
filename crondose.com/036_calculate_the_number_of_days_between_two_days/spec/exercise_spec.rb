require './exercise'

describe Exercise do
  describe ".day_counter" do
    it "counts the days between Christmas in 2016 and July 1, 2004" do
      expect(Exercise.day_counter).to eq(4560)
    end
  end
end
