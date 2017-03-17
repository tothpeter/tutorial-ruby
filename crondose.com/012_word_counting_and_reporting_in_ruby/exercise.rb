class String
  def total_words
    clean_text.split.length
  end

  def total_words_with_scan
    scan(/\w+/).length
  end

  def word_list
    list = {}

    clean_text.downcase.split.each do |word|
      if list[word]
        list[word] += 1
      else
        list[word] = 1
      end
    end

    list
  end

  def word_list_with_scan
    list = Hash.new 0

    downcase.scan(/\w+/) { |word| list[word] += 1 }

    list
  end

  private

  def clean_text
    gsub(/[^a-z0-9]/i, " ")
      .gsub(/\s+/i, " ")
      .strip
  end
end
