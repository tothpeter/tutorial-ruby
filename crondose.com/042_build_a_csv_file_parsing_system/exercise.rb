class MyCSV
  def self.parse file_path
    File.readlines(file_path).map do |line|
      line.chomp.split ","
    end
  end
end
