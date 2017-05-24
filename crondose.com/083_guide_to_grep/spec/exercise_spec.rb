require './exercise'

describe Array do
  describe "#file_name_selector" do
    it 'returns the ruby file names from an array of file names' do
      file_names = %w{file1.rb file2.html file3.rb file4.rb file5.js}
      expect(file_names.file_name_selector('rb')).to eq(['file1', 'file3', 'file4'])
    end
  end

  describe "#file_name_selector_with_reduce" do
    it 'returns the ruby file names from an array of file names' do
      file_names = %w{file1.rb file2.html file3.rb file4.rb file5.js}
      expect(file_names.file_name_selector_with_reduce('rb')).to eq(['file1', 'file3', 'file4'])
    end
  end

  describe "#file_name_selector_with_grep" do
    it 'returns the ruby file names from an array of file names' do
      file_names = %w{file1.rb file2.html file3.rb file4.rb file5.js}
      expect(file_names.file_name_selector_with_grep('rb')).to eq(['file1', 'file3', 'file4'])
    end
  end
end
