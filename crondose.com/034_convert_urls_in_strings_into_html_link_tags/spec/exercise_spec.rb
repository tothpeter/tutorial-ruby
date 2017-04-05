require './exercise'

describe Exercise do
  describe ".url_parser" do
    it 'converts strings that contain URLs into HTML links' do
      str_one = "Some content without a link."
      str_two = "Content with a link that has a period after it https://devcamp.com."
      str_three = "https://devcamp.com that starts at the beginning"

      expect(Exercise.url_parser str_one).to eq("Some content without a link.")
      expect(Exercise.url_parser str_two).to eq("Content with a link that has a period after it <a href='https://devcamp.com' target='_blank'>https://devcamp.com</a>.")
      expect(Exercise.url_parser str_three).to eq("<a href='https://devcamp.com' target='_blank'>https://devcamp.com</a> that starts at the beginning")
    end
  end
end
