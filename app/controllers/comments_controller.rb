class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:success] = 'コメントを投稿しました'
      redirect_back(fallback_location: root_path)
    else
      flash[:dangaer] = 'コメントの投稿に失敗しました'
      redirect_back(fallback_location: root_path)
    end
  end
  
  def edit
  end
  
  def update
  end

    private
    
    def comment_params
      params.require(:comment).permit(:content, :cafepost_id)
    end
end
