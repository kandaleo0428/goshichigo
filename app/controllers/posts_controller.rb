class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc) #新しい投稿から順に並ぶようにするために「(created_at: :desc)」設定している
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new(content_one: params[:content_one])
    @post = Post.new(content2: params[:content2])
    @post = Post.new(content3: params[:content3])
    @post = Post.new(message: params[:message])

    @post.save
    redirect_to("/posts/index")
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post_by(id: params[:id])
    @post.content_one = params[:content_one]
    @post.content2 = params[:content2]
    @post.content3 = params[:content3]
    @post.message = params[:message]
    @post.save
    redirect_to("/posts/index")
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end

end
