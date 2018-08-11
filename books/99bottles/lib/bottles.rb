class Bottles
  def song
    verses(99, 0)
  end

  def verses(from, to)
    verses = []

    from.downto(to).each do |number_of_bottles|
      verses << verse(number_of_bottles)
    end

    verses.join "\n"
  end

  def verse(number_of_bottles)
    verse = []

    verse << generate_first_sentance(number_of_bottles)
    verse << generate_second_sentance(number_of_bottles - 1)
    verse << ''

    verse.join "\n"
  end

  private

  def generate_first_sentance(number_of_bottles)
    x_bottles_of_beer = x_bottles_of_beer(number_of_bottles)

    "#{x_bottles_of_beer} on the wall, #{x_bottles_of_beer}.".capitalize
  end

  def generate_second_sentance(number_of_bottles)
    if number_of_bottles > -1
      x_bottles_of_beer = x_bottles_of_beer(number_of_bottles)
      one_or_it         = number_of_bottles > 0 ? 'one' : 'it'

      "Take #{one_or_it} down and pass it around, #{x_bottles_of_beer} on the wall."
    else
      'Go to the store and buy some more, 99 bottles of beer on the wall.'
    end
  end

  def x_bottles_of_beer number_of_bottles
    if number_of_bottles == 0
      'no more bottles of beer'
    elsif number_of_bottles == 1
      '1 bottle of beer'
    else
      "#{number_of_bottles} bottles of beer"
    end
  end
end
