class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment:params[:comment], 
                           user_id:@current_user.id, 
                           comment_post_id:params[:post_id],
                           comment_user_name:params[:comment_user_name],
                           original_content1:params[:original_content1],
                           original_content2:params[:original_content2],
                           original_content3:params[:original_content3],
                           original_user_id:params[:original_user_id])
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
  
end
