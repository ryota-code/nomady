class HomeController < ApplicationController
  def top
    @q = Cafepost.ransack(params[:q])
    @cafeposts = @q.result(distinct: true).order(' created_at DESC ').page(params[:page]).per(6)
    @favorite_ranks = Cafepost.find(Favorite.group(:cafepost_id).order('count(cafepost_id) desc').limit(6).pluck(:cafepost_id))
  end
end
