require './exercise'

describe Hash do
  let(:hash ) { { topic: :baseball, site: "kalina.tech" } }

  describe "#to_url_params" do
    it "converts the hash to URL params string" do
      expect(hash.to_url_params).to eq("topic=baseball&site=kalina.tech")
    end
  end

  describe "#to_url_params_v2" do
    it "converts the hash to URL params string" do
      expect(hash.to_url_params_v2).to eq("topic=baseball&site=kalina.tech")
    end
  end
end
