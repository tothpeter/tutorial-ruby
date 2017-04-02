require './exercise'

describe User do
  describe "#new" do
    it "allows to create new instance using a block" do
      user = User.new do |u|
        u.name = "Kalina.tech"
        u.email = "hello@kalina.tech"
      end

      expect(user.name).to eq("Kalina.tech")
      expect(user.email).to eq("hello@kalina.tech")
    end

    it "allows to create new instance without using a block" do
      user = User.new

      user.name = "Kalina.tech"
      user.email = "hello@kalina.tech"

      expect(user.name).to eq("Kalina.tech")
      expect(user.email).to eq("hello@kalina.tech")
    end
  end
end
