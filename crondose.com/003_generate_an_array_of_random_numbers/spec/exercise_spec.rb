require './exercise'

describe Exercise do
  describe ".perform" do
    it "generates random sets" do
      random_set_1 = Exercise.perform(20, 1, 1000)
      random_set_2 = Exercise.perform(20, 1, 1000)

      expect(random_set_1.length).to eq(20)
      expect(random_set_2.length).to eq(20)
      expect(random_set_1).not_to eq(random_set_2)
    end
  end
end
