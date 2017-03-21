require './exercise'

describe Exercise do
  let(:menu) { {
    appetizers: [ 'Chips', 'Flatbread' ],
    entrees: [ 'Steak' ],
    dessers: [ 'cake', 'cupcake' ]
  } }

  describe ".random_item" do
    it "returns only one random item form all the food" do
      all_items = [ 'Chips', 'Flatbread', 'Steak','cake', 'cupcake' ]

      expect(all_items).to include(Exercise.random_item(menu))
    end
  end

  describe ".random_combination" do
    it "returns a list of one random item form each category" do
      expect(Exercise.random_combination(menu).length).to eq(3)
    end
  end
end
