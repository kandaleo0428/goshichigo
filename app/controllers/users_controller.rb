class UsersController < ApplicationController
  before_action :authenticate_user,{only: [:index, :show, :edit, :update]}
  before_action :forbid_login_user,{only: [:new, :create, :login_form, :login]}
  before_action :ensure_correct_user,{only: [:edit, :update]}

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @works_count = Post.where(user_id: @user.id).count
    @follower_count = Follow.where(followed_user_id: @user.id).count
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name], 
      email: params[:email], 
      image_name: 'default_user.jpg',
      password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "詠み人（ユーザー）登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      flash[:notice] = "既に登録されているメールアドレスです"
      render("users/new")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]

    if params[:image]
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}",image.read)
    end  

    if @user.save
      flash[:notice] = "詠み人（ユーザー）情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to('/posts/index')
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render('users/login_form')
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end

  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end

  def follows
    @user = User.find_by(id: params[:id])
    @follows = Follow.where(following_user_id: @user.id)
  end

  def comments
    @post = Post.find_by(id: params[:id])
    @user = @current_user
    @comment = Comment.find_by(id: params[:id])
    @comments = Comment.all.order(created_at: :desc)
  end

end
