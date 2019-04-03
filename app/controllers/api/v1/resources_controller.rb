class Api::V1::ResourcesController < ApplicationController
  def index
    resources = Resource.all
    render json: ResourcesSerializer.new(resources)
  end
end
