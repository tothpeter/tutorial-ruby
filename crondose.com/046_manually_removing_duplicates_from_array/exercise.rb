class Array
  def remove_duplicates
    each_with_object([]) do |element, arr|
      arr << element unless arr.include?(element)
    end
  end

  def remove_duplicates_with_hash
    hash = {}

    each do |item|
      hash[item] = nil
    end

    hash.keys
  end
end
