class Hash
  def to_url_params
    output = self.map do |key, value|
      "#{key}=#{value}"
    end

    output.join "&"
  end

  def to_url_params_v2
    self.map { |item| item * "=" } * "&"
  end
end
