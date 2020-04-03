class CafepostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :edit, :update, :create, :destroy]
  
  def new
    @cafepost = current_user.cafeposts.build if logged_in?
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def create
    @cafepost = current_user.cafeposts.build(cafepost_params)
    if @cafepost.save
      flash[:success] = '投稿しました'
      redirect_to ('/')
    else
      render 'new'
    end
  end
  
  def destroy
  end
  
  private
    def cafepost_params
      params.require(:cafepost).permit(:title, :content)
    end
  
end
