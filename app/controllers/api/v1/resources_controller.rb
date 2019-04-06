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
    resource = Resource.new(resource_params)
    if resource.save
      render json: ResourceSerializer.new(resource)
    else
      render status: 404
    end
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :category, :url, :phone)
  end

end
