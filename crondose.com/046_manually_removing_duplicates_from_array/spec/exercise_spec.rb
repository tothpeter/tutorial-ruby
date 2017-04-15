require './exercise'

describe Array do
  describe '#remove_duplicates' do
    it 'removes duplicates' do
      arr = [1, 3, 4, 1, 4]
      expect(arr.remove_duplicates).to eq([1, 3, 4])
    end
  end

  describe '#remove_duplicates_with_hash' do
    it 'removes duplicates' do
      arr = [1, 3, 4, 1, 4]
      expect(arr.remove_duplicates_with_hash).to eq([1, 3, 4])
    end
  end
end
