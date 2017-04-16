class Exercise
  def self.state_sorter list
    list.sort_by do |state|
      state[-2, 2]
    end
  end

  def self.state_sorter_with_gsub list
    list.sort_by do |state|
      state.downcase.gsub(/[^a-z]/, "")
    end
  end
end
