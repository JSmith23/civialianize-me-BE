class Api::V1::ResourcesController < ApplicationController
  def index
    if params["category"]
      resources = Resource.where(category: "#{params["category"]}")
    else
      resources = Resource.all
    end
    render json: ResourcesSerializer.new(resources)
  end
end
