class CafepostsController < ApplicationController
  before_action :logged_in_user, only: %i[new edit update create destroy]
  before_action :good_user, only: [:destroy]
  before_action :set_cafepost, only: %i[show edit update]
  def index
    @cafeposts = Cafepost.search(params[:search]).page(params[:page]).per(10)
    @favorite_ranks = Cafepost.find(Favorite.group(:cafepost_id).order('count(cafepost_id) desc').limit(10).pluck(:cafepost_id))
  end
  
  def tagindex
    if params[:tag_name]
      @cafeposts = Cafepost.tagged_with(params[:tag_name].to_s)
    else
      @cafeposts = Cafepost.all
    end
  end

  def new
    @cafepost = current_user.cafeposts.build if logged_in?
  end

  def show
    @comments = @cafepost.comments
    @comment = Comment.new
  end

  def edit; end

  def update
    if @cafepost.update(cafepost_params)
      flash[:success] = '投稿が更新されました'
      redirect_to cafeposts_path
    else
      render 'edit'
    end
  end

  def create
    @cafepost = current_user.cafeposts.build(cafepost_params)
    if @cafepost.save
      flash[:success] = 'カフェを追加しました'
      redirect_to cafeposts_path
    else
      render 'new'
    end
  end

  def destroy
    @cafepost.destroy
    flash[:success] = '投稿を削除しました'
    redirect_to request.referer || root_url
  end

  def gmap
    @places = Cafepost.all
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow place.title
    end
  end

  private

  def cafepost_params
    params.require(:cafepost).permit(:wifi, :power, :image, :title, :content, :postcode, :address_all, :tag_list)
  end

  def good_user
    @cafepost = current_user.cafeposts.find_by(id: params[:id])
    redirect_to root_url if @cafepost.nil?
  end

  # リファクタリング
  def set_cafepost
    @cafepost = Cafepost.find(params[:id])
  end
end
