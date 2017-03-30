require './exercise'

describe Array do
  let(:books) { [
    {
     title: "Tech world",
     author: "Kalina.tech"
    },
    {
     title: "Simple title",
     author: "Kalina.tech"
    }
  ] }

  describe "#value_included?" do
    it "combines two arrays to generate a hash" do
      expect(books.value_included?('Simple title')).to eq(true)
      expect(books.value_included?('Incorrect content')).to eq(false)
    end
  end

  describe "#value_included_with_each?" do
    it "combines two arrays to generate a hash" do
      expect(books.value_included_with_each?('Simple title')).to eq(true)
      expect(books.value_included_with_each?('Incorrect content')).to eq(false)
    end
  end
end
