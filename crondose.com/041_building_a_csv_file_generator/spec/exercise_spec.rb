require './exercise'
require 'fileutils'

describe MyCSV do
  before do
    @headers = %w{Name Title Email}
    @data = [
      ["Darth Vader", "CEO", "betterthan@theforce.com"],
      ["Luke Skywalker", "Dev", "daddy@issues.com"],
      ["Kylo Ren", "COO", "daddy2@issues.com"],
    ]

    @expected_csv_conten = File.read('spec/support/expected_csv_file.csv').gsub(/\r\n?/, "\n")
  end

  after do
    FileUtils.rm_f('spec/support/generated_csv_file.csv')
  end

  describe ".generate" do
    it 'generates a CSV file with the correct headers and rows' do
      MyCSV.generate @headers, @data

      generated_csv_content = File.read('spec/support/generated_csv_file.csv')

      expect(generated_csv_content).to eq(@expected_csv_conten)
    end
  end

  describe ".generate_using_built_in_csv_class" do
    it 'generates a CSV file with the correct headers and rows' do
      MyCSV.generate_using_built_in_csv_class @headers, @data

      generated_csv_content = File.read('spec/support/generated_csv_file.csv')

      expect(generated_csv_content).to eq(@expected_csv_conten)
    end
  end
end
