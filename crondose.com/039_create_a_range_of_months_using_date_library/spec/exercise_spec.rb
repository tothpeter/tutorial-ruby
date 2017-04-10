require './exercise'

describe MonthGenerator do
  let(:months) { ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"] }

  describe ".months_with_date_range" do
    it 'returns the full list of months for a year as an array' do
      expect(MonthGenerator.months_with_date_range).to eq(months)
    end
  end

  describe ".months" do
    it 'returns the full list of months for a year as an array' do
      expect(MonthGenerator.months).to eq(months)
    end
  end
end
