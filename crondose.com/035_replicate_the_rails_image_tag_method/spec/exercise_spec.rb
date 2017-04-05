require './exercise'

describe Exercise do
  describe ".image_tag" do
    let(:image_path) { "https://kalina.tech/some_pic.jpg" }

    it "generates an HTML img tag" do
      expect(Exercise.image_tag(image_path)).to eq("<img src='#{image_path}'>")
    end

    it "generates an HTML img tag and can optionally take a width" do
      expect(Exercise.image_tag(image_path, width: 42)).to eq("<img src='#{image_path}' width='42'>")
    end

    it "generates an HTML img tag and can optionally take an alt tag" do
      expect(Exercise.image_tag(image_path, width: 42, alt: "My Image")).to eq("<img src='#{image_path}' width='42' alt='My Image'>")
    end

    it "generates an HTML img tag and can optionally take any type of attribute tag" do
      random = rand 100
      expect(Exercise.image_tag(image_path, random_value: random)).to eq("<img src='#{image_path}' random_value='#{random}'>")
    end

  end
end
