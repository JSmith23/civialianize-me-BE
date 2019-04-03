require 'rails_helper'

describe 'Resources API' do
  it 'can return index of resources' do
    resource_1= Resource.create(name: 'my resources_1', category: 'medical', url:'myresource_1.com')
    resource_2= Resource.create(name: 'my resources_2', category: 'housing', url:'myresource_2.com')
    resource_3= Resource.create(name: 'my resources_3', category: 'jobs', url:'myresource_3.com')

    get "/api/v1/resources"

    favorites_json = JSON.parse(response.body)

    expect(response).to be_successful
  end
  xit 'can return all resources of one category' do

  end
end
