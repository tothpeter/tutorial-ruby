class Exercise
  def self.key_sorter hash
    hash.keys.sort do |left, right|
      left.to_s.length <=> right.to_s.length
    end
  end

  def self.key_sorter_convert_to_string hash
    hash.keys.map(&:to_s).sort_by(&:length)
  end
end
