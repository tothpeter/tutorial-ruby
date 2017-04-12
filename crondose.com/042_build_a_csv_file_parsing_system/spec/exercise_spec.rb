require './exercise'

describe MyCSV do
  describe ".parse" do
    it 'parses a CSV file and stores each line as an array, with each column as a separate element in the array' do
      final_data = [
        ["Name", "Title", "Email"],
        ["Darth Vader", "CEO", "betterthan@theforce.com"],
        ["Luke Skywalker", "Dev", "daddy@issues.com"],
        ["Kylo Ren", "COO", "daddy2@issues.com"]
      ]

      expect(MyCSV.parse('spec/support/expected_csv_file.csv')).to eq(final_data)
    end
  end
end
