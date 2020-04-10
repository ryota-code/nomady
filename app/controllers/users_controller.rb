class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :destroy, :followings, :followers]
  
  def index
    @users = User.all.page(params[:page]).per(10)
  end
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    @cafeposts = @user.cafeposts.page(params[:page]).per(10)
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = 'ユーザー登録が完了しました。'
      redirect_to ('/cafeposts')
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "プロフィールが保存されました"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "ユーザーを削除しました"
    redirect_to users_url
  end
  
  def followings
    @user = User.find(params[:id])
    @users = @user.followings.page(params[:page]).per(10)
  end
  
  def followers
    @user = User.find(params[:id])
    @user = @user.followers.page(params[:page]).per(10)
  end
  
  private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :detail, :image)
    end
    

end
