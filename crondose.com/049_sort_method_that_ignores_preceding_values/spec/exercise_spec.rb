require './exercise'

describe Exercise do
  before do
    @states = ['- AZ', 'KY', '* FL', '-- AR']
  end

  describe ".state_sorter" do
    it "properly sorts an array of states, even when the elements contain additional preceding values" do
      expect(Exercise.state_sorter(@states).first).to eq('-- AR')
      expect(Exercise.state_sorter(@states).last).to eq('KY')
    end
  end

  describe ".state_sorter_with_gsub" do
    it "properly sorts an array of states, even when the elements contain additional preceding values" do
      expect(Exercise.state_sorter_with_gsub(@states).first).to eq('-- AR')
      expect(Exercise.state_sorter_with_gsub(@states).last).to eq('KY')
    end
  end
end
