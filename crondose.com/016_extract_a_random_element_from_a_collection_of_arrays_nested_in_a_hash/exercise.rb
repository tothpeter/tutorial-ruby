module Exercise
  def self.random_item menu
    menu.values.flatten.sample
  end

  def self.random_combination menu
    selection = []

    menu.each do |_category, items|
      selection << items.sample
    end

    selection
  end
end
