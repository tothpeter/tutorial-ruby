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
    prefix = bottles_prefix(number_of_bottles)
    bottles = bottles(number_of_bottles)

    "#{prefix} #{bottles} of beer on the wall, #{prefix} #{bottles} of beer.".capitalize
  end

  def generate_second_sentance(number_of_bottles)
    if number_of_bottles > -1
      prefix = bottles_prefix(number_of_bottles)
      bottles = bottles(number_of_bottles)

      one_or_it = number_of_bottles > 0 ? 'one' : 'it'

      "Take #{one_or_it} down and pass it around, #{prefix} #{bottles} of beer on the wall."
    else
      'Go to the store and buy some more, 99 bottles of beer on the wall.'
    end
  end

  def bottles(count)
    sign_of_plural = count == 1 ? '' : 's'

    "bottle#{sign_of_plural}"
  end

  def bottles_prefix(count)
    if count.zero?
      'no more'
    else
      count
    end
  end
end
