class AddpostsController < ApplicationController

    def create
        @addpost = Addpost.new(
            content1: params[:content1],
            content2: params[:content2],
            content3: params[:content3],
            content4: params[:content4],
            content5: params[:content5],
            addmessage: params[:addmessage],
            original_user: params[:user_name],
            add_user: @current_user.name
        )
        if @addpost.save
            flash[:notice] = "連句しました"
            redirect_to("/addposts/index")
        else    
            render("/posts/addpost")
        end
        
    end

    def index
        @addposts = Addpost.all.order(created_at: :desc)
    end

end