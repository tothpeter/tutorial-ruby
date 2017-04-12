class Array
  def index_hash
    result = {}

    each_with_index do |item, index|
      result[index] = item
    end

    result
  end
end
