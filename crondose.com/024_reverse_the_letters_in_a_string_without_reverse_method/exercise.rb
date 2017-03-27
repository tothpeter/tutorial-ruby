class String
  def alt_reverse_optimised
    reversed_string = self.dup

    first_index = 0
    last_index = self.length - 1

    while first_index < last_index
      reversed_string[first_index], reversed_string[last_index] = reversed_string[last_index], reversed_string[first_index]

      first_index += 1
      last_index  -= 1
    end

    reversed_string
  end

  def alt_reverse
    reversed_string = ""

    length = self.length - 1

    length.downto.each do |last_index|
      reversed_string << self[last_index]
    end

    reversed_string
  end
end
