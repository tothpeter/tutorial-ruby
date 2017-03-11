class Array
  def bubble_sort!
    i = 0
    len = self.length - 1

    loop do
      j = 0
      swapped = false

      len.times do |j|
        if self[j] > self[j + 1]
          self[j], self[j + 1] = self[j + 1], self[j]
          swapped = true
        end
      end

      len -= 1
      break unless swapped
    end

    self
  end
end
