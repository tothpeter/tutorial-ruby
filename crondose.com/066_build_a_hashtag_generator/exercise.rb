class String
  def hashtag_generator
    split.map { |item| "##{item}" }.join(" ")
  end
end
