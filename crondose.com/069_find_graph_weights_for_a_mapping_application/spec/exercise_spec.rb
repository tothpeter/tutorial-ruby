require './exercise'

describe Exercise do
  describe ".route_generator" do
    it "calculates the value of weight in a mapping application" do
      nodes = [
        [1, 3],
        [2, 3],
        [3, 4]
      ]

      expect(Exercise.route_generator(15, nodes)).to eq(1.5)
    end
  end
end
