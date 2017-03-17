module RubyContent
  refine String do
    def commentize
      "# #{self}"
    end
  end
end

class ContentController
  using RubyContent

  def initialize word
    @word = word
  end

  def hidden_content
    @word.commentize
  end
end

module HtmlContent
  refine String do
    def commentize
      "<!-- #{self} -->"
    end
  end
end

class HtmlController
  using HtmlContent

  def initialize word
    @word = word
  end

  def hidden_content
    @word.commentize
  end
end
