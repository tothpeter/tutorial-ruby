class Array
  def at_least_four_characters?
    all? do |item|
      item.length >= 4
    end
  end
end
