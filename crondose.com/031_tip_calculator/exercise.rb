module Tippy
  class Builder
    def initialize options
      @total = options[:total]
      @gratuity = parse_gratuity options[:gratuity]
    end

    def generate
      @total + @total * @gratuity
    end

    private

    def parse_gratuity gratuity
      case gratuity.to_s.downcase
      when 'high'
        0.25
      when 'standard'
        0.18
      when 'low'
        0.15
      else
        Float(gratuity) / 100.0
      end
    rescue ArgumentError
      raise ArgumentError.new "Gratuity can only be: 'low', 'standard', 'high' or a number"
    end
  end
end
