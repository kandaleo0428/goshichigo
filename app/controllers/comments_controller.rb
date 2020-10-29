class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment:params[:comment],user_id:@current_user.id)
      if @comment.save
        flash[:notice] = "コメントしました"
        redirect_to("/posts/show")
      else
        flash[:notice] = "コメントできませんでした"
        render("/posts/show")
      end
  end
end
