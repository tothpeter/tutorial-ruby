class Exercise
  def self.markdown_heading_parser input
    input.gsub(/^(#+ ?)(.+)/) do
      header_level = $1.count "#"
      header_tag = "h#{header_level}"

      [
        "<#{header_tag}>",
        $2,
        "</#{header_tag}>"
      ].join
    end
  end
end
