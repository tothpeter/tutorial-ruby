class Array
  def alt_include? item_looking_for
    any? { |item_current| item_current == item_looking_for}
  end

  def alt_include_with_each? item_looking_for
    each do |item_current|
      return true if item_current == item_looking_for
    end

    false
  end
end
