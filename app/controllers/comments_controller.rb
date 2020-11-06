class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment:params[:comment], 
                           user_id:@current_user.id, 
                           comment_post_id:params[:post_id],
                           comment_user_name:params[:comment_user_name])
      if @comment.save
        flash[:notice] = "コメントしました"
        redirect_to("/posts/#{params[:post_id]}")
      else
        flash[:notice] = "コメントできませんでした"
        render("/posts/#{params[:post_id]}")
      end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    flash[:notice] = "コメントを削除しました"
    @comment.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end

  def index
    
  end
  
end
