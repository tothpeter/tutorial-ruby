require './exercise'

describe String do
  let(:str) { "- The quick brown fox / jumped over the lazy 22  ,fox." }

  describe "#total_words" do
    it "returns the number of real worlds" do
      expect(str.total_words).to eq(10)
    end
  end

  describe "#total_words_with_scan" do
    it "returns the number of real worlds" do
      expect(str.total_words_with_scan).to eq(10)
    end
  end

  let(:word_list_with_occurrence) { {
    "the" => 2,
    "quick" => 1,
    "brown" => 1,
    "fox" => 2,
    "jumped" => 1,
    "over" => 1,
    "lazy" => 1,
    "22" => 1
  } }

  describe "#word_list" do
    it "returns the number of real worlds" do
      expect(str.word_list).to eq(word_list_with_occurrence)
    end
  end

  describe "#word_list_with_scan" do
    it "returns the number of real worlds" do
      expect(str.word_list_with_scan).to eq(word_list_with_occurrence)
    end
  end
end
