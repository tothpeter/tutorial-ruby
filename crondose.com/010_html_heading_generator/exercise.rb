class Exercise
  def self.perform title
    heading = %w{h1 placeholder h1}
    heading[1] = title
    "<%s>%s</%s>" % heading
  end
end
