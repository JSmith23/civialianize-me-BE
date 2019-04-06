require 'rails_helper'

describe 'Resources API' do
  it 'can return index of resources' do
    resource_1= Resource.create(name: 'my resources_1', category: 'medical', url:'myresource_1.com')
    resource_2= Resource.create(name: 'my resources_2', category: 'housing', url:'myresource_2.com')
    resource_3= Resource.create(name: 'my resources_3', category: 'jobs', url:'myresource_3.com', phone: 3034575793)

    get "/api/v1/resources"

    favorites_json = JSON.parse(response.body)

    expect(response).to be_successful
    expect(favorites_json["data"][0]["attributes"]["name"]).to eq("my resources_1")
    expect(favorites_json["data"][0]["attributes"]["category"]).to eq("medical")
    expect(favorites_json["data"][0]["attributes"]["url"]).to eq("myresource_1.com")
    expect(favorites_json["data"][0]["attributes"]["phone"]).to eq(nil)
    expect(favorites_json["data"][2]["attributes"]["name"]).to eq("my resources_3")
    expect(favorites_json["data"][2]["attributes"]["category"]).to eq("jobs")
    expect(favorites_json["data"][2]["attributes"]["url"]).to eq("myresource_3.com")
    expect(favorites_json["data"][2]["attributes"]["phone"]).to eq(3034575793)
  end
  it 'can return all resources of one category' do
    resource_1= Resource.create(name: 'my resources_1', category: 'medical', url:'myresource_1.com')
    resource_2= Resource.create(name: 'my resources_2', category: 'housing', url:'myresource_2.com')
    resource_3= Resource.create(name: 'my resources_3', category: 'medical', url:'myresource_3.com')
    category = 'medical'

    get "/api/v1/resources?category=#{category}"

    favorites_json = JSON.parse(response.body)

    expect(response).to be_successful
    expect(favorites_json["data"][0]["attributes"]["name"]).to eq("my resources_1")
    expect(favorites_json["data"][0]["attributes"]["category"]).to eq("medical")
    expect(favorites_json["data"][0]["attributes"]["url"]).to eq("myresource_1.com")
    expect(favorites_json["data"][1]["attributes"]["name"]).to eq("my resources_3")
    expect(favorites_json["data"][1]["attributes"]["category"]).to eq("medical")
    expect(favorites_json["data"][1]["attributes"]["url"]).to eq("myresource_3.com")
  end
  it 'can return one resource by id' do
    resource_1= Resource.create(name: 'my resources_1', category: 'medical', url:'myresource_1.com')

    get "/api/v1/resources/#{resource_1.id}"

    favorites_json = JSON.parse(response.body)

    expect(response).to be_successful
    expect(favorites_json["data"][0]["attributes"]["name"]).to eq("my resources_1")
    expect(favorites_json["data"][0]["attributes"]["category"]).to eq("medical")
    expect(favorites_json["data"][0]["attributes"]["url"]).to eq("myresource_1.com")
  end
  it 'can post a new resource with all params' do
    params = {
      name: "resources",
      category: "medical",
      url: "url",
    }

    post "/api/v1/resources" , params: params

    favorites_json = JSON.parse(response.body)

    expect(response).to be_successful
    expect(favorites_json["data"]["attributes"]["name"]).to eq("resources")
    expect(favorites_json["data"]["attributes"]["category"]).to eq("medical")
    expect(favorites_json["data"]["attributes"]["url"]).to eq("url")
    expect(favorites_json["data"]["attributes"]["phone"]).to eq(nil)
  end
  it 'can post a new resource with all params' do
    params = {
      name: "resources",
      url: "url",
    }

    post "/api/v1/resources" , params: params

    favorites_json = JSON.parse(response.body)

    expect(response.status).to eq(404)
  end
end
