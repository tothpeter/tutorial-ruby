class Exercise
  def self.image_tag image_path, options = {}
    result = "<img src='#{image_path}'"

    options.each do |attribute, value|
      result += " #{attribute}='#{value}'"
    end

    result + ">"
  end
end
