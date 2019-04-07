class Api::V1::ResourcesController < ApplicationController
  def index
    if params["category"]
      resources = Resource.where(category: "#{params["category"]}")
    else
      resources = Resource.all
    end
    render json: ResourcesSerializer.new(resources)
  end

  def show
    resource = Resource.where(id: "#{params[:id]}")
    render json: ResourceSerializer.new(resource)
  end

  def create
    if resource_params["category"]
      resource = Resource.create(resource_params)
      render status: :created, json: ResourceSerializer.new(resource)
    else
      render json: {status: 'Missing category'}
    end
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :category, :url, :phone)
  end

end
