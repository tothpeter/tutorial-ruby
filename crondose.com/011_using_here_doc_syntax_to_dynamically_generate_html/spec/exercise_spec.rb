require './exercise'

describe Exercise do
  describe ".perform" do
    it "generates HTML with dynamic title tag" do
      expect(Exercise.perform("Kalina.tech")).to include("<title>Kalina.tech</title>")
    end
  end
end
