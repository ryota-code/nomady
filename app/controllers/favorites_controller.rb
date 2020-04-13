class FavoritesController < ApplicationController
  def create
    user = current_user
    cafepost = Cafepost.find(params[:cafepost_id])
    if Favorite.create(user_id: user.id,post_id:cafepost.id)
    redirect_to cafepost
    else
      redirect_to root_url
    end
  end

  def destroy
    user = current_user
    cafepost = Cafepost.find(params[:cafepost_id])
    if favorite = Favorite.find_by(user_id: user.id,post_id:cafepost.id)
      favorite.delete
      redirect_to users_path(current_user)
    else
      redirect_to root_url
    end
  end
  
end
