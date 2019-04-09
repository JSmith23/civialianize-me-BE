require 'rails_helper'

describe 'VA' do
  before(:each) do
    data = {lat: 39.113014, lng: -105.358887}
    @va = VaService.new(data)
  end

  describe "Va API" do
    it "ensures it is an instance of VA Service" do
      expect(@va).to be_an_instance_of(VaService)
    end

    it ".get_facilities", :vcr do
      data = @va.get_facilities[0]

      expect(data).to have_key(:attributes)
      expect(data[:attributes][:name]).to eq("PFC Floyd K. Lindstrom Department of Veterans Affairs Clinic")
      expect(data[:attributes][:address][:physical][:zip]).to eq("80907-4094")
      expect(data[:attributes][:address][:physical][:city]).to eq("Colorado Springs")
      expect(data[:attributes][:address][:physical][:state]).to eq("CO")
      expect(data[:attributes][:address][:physical][:address_1]).to eq("3141 Centennial Boulevard")
    end

  end
end
