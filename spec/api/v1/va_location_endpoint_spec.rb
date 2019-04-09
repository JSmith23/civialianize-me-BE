# require 'rails_helper'

# describe 'va locations endpoint' do
#   it 'returns a list of facilities' do
    # facilities_1 = Facilities.new(name: "York Street VA Clinic", phone: "720-501-3367 x", address: "3836 York Street", city: "Denver", state: "CO", zip_code: "80205-3540")
    # facilities_2 = Facilities.new(name: "Denver VA Medical Center", phone: "303-399-8020 x", address: "1055 Clermont Street", city: "Denver", state: "CO", zip_code: "80220-3808")

#     get "/api/v1/va_locations?=denver,co"

#     va_location_json = JSON.parse(response.body)

#     expect(response).to be_successful
#     expect(va_location_json["data"]["attributes"]["facilities"][0]["name"]).to eq("York Street VA Clinic")
#     expect(va_location_json["data"]["attributes"]["facilities"][1]["name"]).to eq("Denver VA Medical Center")
#   end
# end