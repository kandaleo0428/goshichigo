class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}

  def index
    @posts = Post.all.order(created_at: :desc) #新しい投稿から順に並ぶようにするために「(created_at: :desc)」設定している
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comment = Comment.find_by(id: params[:id])

    @user = if @post.present?
               @likes_count = Like.where(post_id:@post.id).count
               @post.user
            else @comment.present?
               @comment.user
            end

    @comments = Comment.all.order(created_at: :desc)
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      content1: params[:content1],
      content2: params[:content2],
      content3: params[:content3],
      message: params[:message],
      user_id: @current_user.id
      )
    
    if @post.save
    flash[:notice] ="一句、詠みました（投稿しました）"
    redirect_to("/posts/index")
    else
    render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content1 = params[:content1]
    @post.content2 = params[:content2]
    @post.content3 = params[:content3]
    @post.message = params[:message]
    #render('posts/edit') #renderを用意したがデフォルトでrenderのような効果が出ているので一旦コメントにしておく

    if @post.save
      flash[:notice] = "編集できました！"
      redirect_to('/posts/index') #保存できた場合
    else
      flash[:notice] = "保存できませんでした（入力条件をご確認ください）"
      render("/posts/edit")
      #redirect_to("/posts/#{@post.id}/edit") #保存できなかった場合
    end

  end

  def destroy
    @post = Post.find_by(id: params[:id]) 
    @post.destroy
    flash[:notice] = "一句、削除しました（投稿を削除しました）"
    redirect_to("/posts/index")
  end

  def ensure_correct_user
    @post = Post.find_by(id: params[:id])
    if @post.user_id != @current_user.id
    flash[:notice] = "権限がありません"
    redirect_to("/posts/index")
    end
  end

  def addpost 
    @content1 = params[:content1]
    @content2 = params[:content2]
    @content3 = params[:content3]
    @user_name = params[:user_name]
    @user_id = params[:user_id]
  end

end