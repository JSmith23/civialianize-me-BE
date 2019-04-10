require 'rails_helper'

describe 'Resources API' do
  it 'can return index of resources' do
    resource_1= Resource.create(name: 'my resources_1', category: 'medical', url:'myresource_1.com', logo:"image-1", description:"good resource for medical care")
    resource_2= Resource.create(name: 'my resources_2', category: 'housing', url:'myresource_2.com', logo:"image-2", description:"good resource for housing")
    resource_3= Resource.create(name: 'my resources_3', category: 'jobs', url:'myresource_3.com', phone: 3034575793, logo:"image-3", description:"good resource for job")

    get "/api/v1/resources"

    favorites_json = JSON.parse(response.body)

    expect(response).to be_successful
    expect(favorites_json["data"][0]["attributes"]["name"]).to eq("my resources_1")
    expect(favorites_json["data"][0]["attributes"]["category"]).to eq("medical")
    expect(favorites_json["data"][0]["attributes"]["url"]).to eq("myresource_1.com")
    expect(favorites_json["data"][0]["attributes"]["phone"]).to eq(nil)
    expect(favorites_json["data"][0]["attributes"]["logo"]).to eq("image-1")
    expect(favorites_json["data"][0]["attributes"]["description"]).to eq("good resource for medical care")
    expect(favorites_json["data"][2]["attributes"]["name"]).to eq("my resources_3")
    expect(favorites_json["data"][2]["attributes"]["category"]).to eq("jobs")
    expect(favorites_json["data"][2]["attributes"]["url"]).to eq("myresource_3.com")
    expect(favorites_json["data"][2]["attributes"]["phone"]).to eq('3034575793')
    expect(favorites_json["data"][2]["attributes"]["logo"]).to eq("image-3")
    expect(favorites_json["data"][2]["attributes"]["description"]).to eq('good resource for job')
  end

  it 'can return all resources of one category' do
    resource_1= Resource.create(name: 'my resources_1', category: 'medical', url:'myresource_1.com', logo:"image-1", description:"description-1")
    resource_2= Resource.create(name: 'my resources_2', category: 'housing', url:'myresource_2.com', logo:"image-2", description:"description-2")
    resource_3= Resource.create(name: 'my resources_3', category: 'medical', url:'myresource_3.com', logo:"image-3", description:"description-3")
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
    resource_1= Resource.create(name: 'my resources_1', category: 'medical', url:'myresource_1.com', logo:"image-3", description:"good")

    get "/api/v1/resources/#{resource_1.id}"

    favorites_json = JSON.parse(response.body)

    expect(response).to be_successful
    expect(favorites_json["data"][0]["attributes"]["name"]).to eq("my resources_1")
    expect(favorites_json["data"][0]["attributes"]["category"]).to eq("medical")
    expect(favorites_json["data"][0]["attributes"]["url"]).to eq("myresource_1.com")
    expect(favorites_json["data"][0]["attributes"]["logo"]).to eq("image-3")
    expect(favorites_json["data"][0]["attributes"]["description"]).to eq("good")
  end
  it 'can post a new resource with all params' do
    params = {
      name: "resources",
      category: "medical",
      url: "url",
      logo: "image-4",
      description: "helpful for finding a doctor"
    }

    post "/api/v1/resources" , params: {resource: params}

    parsed_json = JSON.parse(response.body)

    expect(response).to have_http_status(:created)
    expect(parsed_json["data"]["attributes"]["name"]).to eq("resources")
    expect(parsed_json["data"]["attributes"]["category"]).to eq("medical")
    expect(parsed_json["data"]["attributes"]["url"]).to eq("url")
    expect(parsed_json["data"]["attributes"]["phone"]).to eq(nil)
    expect(parsed_json["data"]["attributes"]["logo"]).to eq("image-4")
    expect(parsed_json["data"]["attributes"]["description"]).to eq("helpful for finding a doctor")
  end
  it 'cannot post a new resource without a category' do
    params = {
      name: "resources",
      url: "url",
    }

    post "/api/v1/resources" , params: {resource: params}
    parsed_json = JSON.parse(response.body)
    expect(parsed_json['status']).to eq("Missing category")
  end
end
