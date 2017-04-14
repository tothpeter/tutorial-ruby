require './exercise'

describe Exercise do
  before do
    @list = arr = (1..3)
    @expected_output = [ 1, 2, 3, 1, 2, 3, 1, 2, 3 ]
  end
  describe ".cloned_cycle" do
    it 'Iterates through an array a variable number of times and returns the full set of elements' do
      expect(Exercise.cloned_cycle(@list, 3)).to eq(@expected_output)
    end
  end

  describe ".cloned_cycle_with_loop" do
    it 'Iterates through an array a variable number of times and returns the full set of elements' do
      expect(Exercise.cloned_cycle_with_loop(@list, 3)).to eq(@expected_output)
    end
  end
end
