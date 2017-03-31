require './exercise'

describe Tippy::Builder do
  describe "#generate" do
    it "Accurately generates a tip given a string or a integer input" do
      test_1 = Tippy::Builder.new(total: 100, gratuity: '23.5').generate
      test_2 = Tippy::Builder.new(total: 100, gratuity: 'high').generate
      test_3 = Tippy::Builder.new(total: 100, gratuity: 'LOW').generate
      test_4 = Tippy::Builder.new(total: 100, gratuity: 'standard').generate
      test_5 = Tippy::Builder.new(total: 100, gratuity: '18').generate
      test_6 = Tippy::Builder.new(total: 100, gratuity: 20).generate
      test_7 = Tippy::Builder.new(total: 100, gratuity: 0).generate

      expect(test_1).to eq(123.5)
      expect(test_2).to eq(125.0)
      expect(test_3).to eq(115.0)
      expect(test_4).to eq(118.0)
      expect(test_5).to eq(118.0)
      expect(test_6).to eq(120.0)
      expect(test_7).to eq(100.0)
    end

    it "raises an error when invalid gratuity is presented" do
      expect {
        Tippy::Builder.new(total: 100, gratuity: 'invalid').generate
      }.to raise_error(ArgumentError)
    end
  end
end
