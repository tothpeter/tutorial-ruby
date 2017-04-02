class Exercise
  def self.lineup_generator list, &block
    list.map.with_index(1) do |item, index|
      yield index, item
    end
  end
end
