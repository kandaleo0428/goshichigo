class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:name], email: params[:email], image_name: 'icon_for_GoShichiGo_user.png')
    if @user.save
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

　　 #if image = params[:image]
    #@user.image_name = "#{@user.id}.jpg"
    #@user.image_name = "#{@user/id}.png" ←これを併記したらpngでも登録可能になる？
    #File.binwrite("public/user_images/#{@user.image_name}",image.read)
    #end
  

    if @user.save
      flash[:notice] = "詠み人（ユーザー）情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

end
