require './exercise'

describe Exercise do
  describe ".atm" do
    it "dispenses the correct denominations to users" do
      expect(Exercise.atm 110, [100, 20, 10, 5]). to eq({100=>1, 20=>0, 10=>1, 5=>0})
      expect(Exercise.atm 245, [20, 10, 5]). to eq({20=>12, 10=>0, 5=>1})
    end
  end

  describe ".atm_with_reduce" do
    it "dispenses the correct denominations to users" do
      expect(Exercise.atm_with_reduce 110, [100, 20, 10, 5]). to eq({100=>1, 20=>0, 10=>1, 5=>0})
      expect(Exercise.atm_with_reduce 245, [20, 10, 5]). to eq({20=>12, 10=>0, 5=>1})
    end
  end

  describe ".atm_with_divmod" do
    it "dispenses the correct denominations to users" do
      expect(Exercise.atm_with_divmod 110, [100, 20, 10, 5]). to eq({100=>1, 20=>0, 10=>1, 5=>0})
      expect(Exercise.atm_with_divmod 245, [20, 10, 5]). to eq({20=>12, 10=>0, 5=>1})
    end
  end
end
