require './exercise'

describe Exercise do
  let(:headers) { ['title', 'describe', 'rating'] }
  let(:data) { ['Nice title', 'Nice description', 5 ] }
  let(:expected_result) { {
    "title" => "Nice title",
    "describe" => "Nice description",
    "rating" => 5
  } }

  describe ".perform" do
    it "combines two arrays to generate a hash" do
      expect(Exercise.perform(headers, data)).to eq(expected_result)
    end
  end

  describe ".perform_with_each" do
    it "combines two arrays to generate a hash" do
      expect(Exercise.perform_with_each(headers, data)).to eq(expected_result)
    end
  end
end
