require "csv"

class MyCSV
  def self.generate headers, data
    File.open('spec/support/generated_csv_file.csv', 'w') do |file|
      file.truncate(0)

      file.puts headers.join(',')

      data.each do |data_line|
        file.puts data_line.join(',')
      end
    end
  end

  def self.generate_using_built_in_csv_class headers, data
    CSV.open('spec/support/generated_csv_file.csv', 'wb') do |csv|
      csv << headers

      data.each do |data_line|
        csv << data_line
      end
    end
  end
end
