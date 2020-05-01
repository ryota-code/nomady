class CommentsController < ApplicationController
  def create
    @cafepost = Cafepost.find(params[:cafepost_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:success] = 'コメントを投稿しました'
      render :index
    else
      flash[:dangaer] = 'コメントの投稿に失敗しました'
      render :index
    end
  end

  def edit; end

  def update; end
  
  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render :index
    end
  end
  
  private

  def comment_params
    params.require(:comment).permit(:content, :cafepost_id, :user_id)
  end
end
