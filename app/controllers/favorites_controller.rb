class FavoritesController < ApplicationController
  before_action :logged_in_user
  def create
    @cafepost = Cafepost.find(params[:cafepost_id])
    @cafepost.iine(current_user)
  end

  def destroy
    @cafepost = Favorite.find(params[:id]).cafepost
    @cafepost.uniine(current_user)
  end
end
