require './exercise'

describe ContentController do
  describe "#hidden_content" do
    it "it uses the changed behaviour of the String class" do
      controller = ContentController.new "My string"

      expect(controller.hidden_content).to eq("# My string")
    end
  end
end

describe HtmlController do
  describe "#hidden_content" do
    it "it uses the changed behaviour of the String class" do
      controller = HtmlController.new "My string"

      expect(controller.hidden_content).to eq("<!-- My string -->")
    end
  end
end
