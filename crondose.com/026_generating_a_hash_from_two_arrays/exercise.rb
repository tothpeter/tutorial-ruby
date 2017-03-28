class Exercise
  def self.perform headers, data
    result = {}

    headers.zip(data).each do |header, value|
      result[header] = value
    end

    result
  end

  def self.perform_with_each headers, data
    result = {}

    headers.each_with_index do |header, index|
      result[header] = data[index]
    end

    result
  end
end
