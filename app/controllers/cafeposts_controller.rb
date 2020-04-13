class CafepostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :edit, :update, :create, :destroy]
  before_action :good_user, only:[:destroy]
  def index
    @post_items = Cafepost.all.page(params[:page]).per(10)
  end
  
  def new
    @cafepost = current_user.cafeposts.build if logged_in?
  end
  
  def show
    @cafepost = Cafepost.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  def create
    @cafepost = current_user.cafeposts.build(cafepost_params)
    if @cafepost.save
      flash[:success] = '投稿しました'
      redirect_to cafeposts_path
    else
      render 'new'
    end
  end
  
  def destroy
    @cafepost.destroy
    flash[:success] = "投稿を削除しました"
    redirect_to request.referrer || root_url
  end
  
  private
  
    def cafepost_params
      params.require(:cafepost).permit(:wifi, :power, :image, :title, :content, :postcode, :prefecture_code, :address_city, :address_street, :address_building)
    end
    
    def good_user
      @cafepost = current_user.cafeposts.find_by(id: params[:id])
      redirect_to root_url if @cafepost.nil?
    end
end
