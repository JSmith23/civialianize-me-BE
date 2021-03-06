require 'rails_helper'

describe 'Resources API' do
  it 'returns index of favorites' do
    favorite_1= Favorite.create(name: 'my favorite_1', category: 'medical', url:'myfavorite_1.com', phone: "773-546-7920", logo:"image-2", description:"hello")
    favorite_2= Favorite.create(name: 'my favorite_2', category: 'housing', url:'myfavorite_2.com', phone: "773-546-9875", logo:"image-1", description:"good resource")


    get "/api/v1/favorites"

    favorites_json = JSON.parse(response.body)

    expect(response).to be_successful
    expect(favorites_json["data"][0]["attributes"]["name"]).to eq("my favorite_1")
    expect(favorites_json["data"][0]["attributes"]["category"]).to eq("medical")
    expect(favorites_json["data"][0]["attributes"]["url"]).to eq("myfavorite_1.com")
    expect(favorites_json["data"][0]["attributes"]["phone"]).to eq("773-546-7920")
    expect(favorites_json["data"][0]["attributes"]["logo"]).to eq("image-2")
    expect(favorites_json["data"][0]["attributes"]["description"]).to eq("hello")
    expect(favorites_json["data"][1]["attributes"]["name"]).to eq("my favorite_2")
    expect(favorites_json["data"][1]["attributes"]["category"]).to eq("housing")
    expect(favorites_json["data"][1]["attributes"]["url"]).to eq("myfavorite_2.com")
    expect(favorites_json["data"][1]["attributes"]["phone"]).to eq("773-546-9875")
    expect(favorites_json["data"][1]["attributes"]["logo"]).to eq("image-1")
    expect(favorites_json["data"][1]["attributes"]["description"]).to eq("good resource")
  end

  it 'returns an individual favorite' do

    favorite_1= create(:favorite, id: 1, name: "my favorite_1", category: "medical", url: "myfavorite_1.come", phone: "773-546-7920", logo:"image-3", description: "medical resource")
    get "/api/v1/favorites/1"

    favorites_json = JSON.parse(response.body)

    expect(response).to be_successful
    expect(favorites_json["data"]["attributes"]["name"]).to eq(favorite_1.name)
    expect(favorites_json["data"]["attributes"]["category"]).to eq(favorite_1.category)
    expect(favorites_json["data"]["attributes"]["url"]).to eq(favorite_1.url)
    expect(favorites_json["data"]["attributes"]["phone"]).to eq(favorite_1.phone)
    expect(favorites_json["data"]["attributes"]["logo"]).to eq(favorite_1.logo)
    expect(favorites_json["data"]["attributes"]["description"]).to eq(favorite_1.description)
  end

  it 'can edit an individual favorite' do

    favorite_1= create(:favorite, id: 1, name: "my favorite_1", category: "medical", url: "myfavorite_1.come", phone: "773-546-7920", logo:"image-4", description:"hello")

    put "/api/v1/favorites/1", params: {name: "new_name", category: "housing", url: "www.google.com", phone: "773-226-5412"}

    expect(response).to be_successful
    expect(response.status).to eq(200)
    results = JSON.parse(response.body)
    expect(results['name']).to eq("new_name")
    expect(results['category']).to eq("housing")
    expect(results['url']).to eq("www.google.com")
    expect(results['phone']).to eq("773-226-5412")
  end

  it 'can create an individual favorite' do

    post "/api/v1/favorites", params: {name: "new_name", category: "housing", url: "www.google.com", phone: "773-226-5412", logo:"image-5", description:"housing resource"}

    expect(response).to be_successful
    expect(response.status).to eq(200)
    results = JSON.parse(response.body)
    expect(results['name']).to eq("new_name")
    expect(results['category']).to eq("housing")
    expect(results['url']).to eq("www.google.com")
    expect(results['phone']).to eq("773-226-5412")
  end

  it 'can delete an individual favorite' do

    favorite_1= create(:favorite, id: 1, name: "my favorite_1", category: "medical", url: "myfavorite_1.come", phone: "773-546-7920", logo:"image-6", description:"no description")

    delete "/api/v1/favorites/1"

    expect(response).to be_successful
    expect(response.status).to eq(204)
  end
end
