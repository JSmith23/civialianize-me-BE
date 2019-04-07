class Api::V1::VaLocationsController < ApplicationController
  def index
    render json: FacilitiesSerializer.new(FacilitiesGenerator.new(params[:location]))
  end
end