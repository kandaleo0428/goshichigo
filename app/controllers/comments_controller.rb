class CommentsController < ApplicationController

  def create
<<<<<<< HEAD
    @comment = Comment.new(comment:params[:comment], 
                           user_id:@current_user.id, 
                           comment_post_id:params[:post_id],comment_user_name:params[:comment_user_name])
=======
    @comment = Comment.new(comment:params[:comment], user_id:@current_user.id)
>>>>>>> 連句機能を作成する
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
<<<<<<< HEAD
    
=======
    params[:post_id]
>>>>>>> 連句機能を作成する
    redirect_to("/posts/#{params[:post_id]}")
  end
  
end
