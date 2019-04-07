class Api::V1::FavoritesController < ApplicationController
  def index
    render json: FavoriteSerializer.new(Favorite.all)
  end

  def show
    render json: FavoriteSerializer.new(Favorite.find(params[:id]))
  end

  def destroy
    @fav = Favorite.find(params[:id])
    @fav.destroy
  end

  private

  def favorite_params
    params.permit(:name, :category, :url, :phone)
  end
end