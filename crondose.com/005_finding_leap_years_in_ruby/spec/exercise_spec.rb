require './exercise'

describe Exercise do
  describe ".perform" do
    it "returns the leap years from 1900 till 1999" do
      leap_years = Exercise.perform
      expect(leap_years.first(4)).to eq([1904, 1908, 1912, 1916])
      expect(leap_years.last).to eq(1996)
      expect(leap_years.length).to eq(24)
    end
  end
end
