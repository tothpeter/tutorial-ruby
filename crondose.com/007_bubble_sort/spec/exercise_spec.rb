require './exercise'

describe Array do
  describe "#bubble_sort!" do

    context "when the array is sorted" do
      it "won't change the order" do
        input = [ 1, 2, 3, 4, 5, 6 ]

        expect(input.bubble_sort!).to eq(input.sort)
      end
    end

    context "when the elemenst are in random order" do
      it "sorts the given array" do
        input = [ 2, 6, 4, 1, 5, 3 ]

        expect(input.bubble_sort!).to eq(input.sort)
      end
    end
  end
end
