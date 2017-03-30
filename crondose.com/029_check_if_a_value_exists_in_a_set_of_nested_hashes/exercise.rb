class Array
  def value_included? value_looking_for
    any? do |item|
      item.has_value? value_looking_for
    end
  end

  def value_included_with_each? value_looking_for
    each do |item|
      return true if item.has_value? value_looking_for
    end

    false
  end
end
