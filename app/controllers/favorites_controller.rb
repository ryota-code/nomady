class FavoritesController < ApplicationController
  before_action :logged_in_user
  def create
    @cafepost = Cafepost.find(params[:cafepost_id])
    unless @cafepost.iine?(current_user)
      @cafepost.iine(current_user)
      @cafepost.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def destroy
    @cafepost = Favorite.find(params[:id]).cafepost
    if @cafepost.iine?(current_user)
      @cafepost.uniine(current_user)
      @cafepost.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end
end
