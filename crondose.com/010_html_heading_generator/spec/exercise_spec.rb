require './exercise'

describe Exercise do
  describe ".perform" do
    it "renders an h1 header tag with a title" do
      expect(Exercise.perform("Kalina.tech")).to eq("<h1>Kalina.tech</h1>")
    end
  end
end
