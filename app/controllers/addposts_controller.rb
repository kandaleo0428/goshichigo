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
            original_user_id: params[:user_id],
            add_user: @current_user.name,
            add_user_id: @current_user.id,
            created_at_wareki: params[:created_at_wareki]
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

    def destroy
        @addpost = Addpost.find_by(id: params[:id]) 
        @addpost.destroy
        flash[:notice] = "連句を削除しました"
        redirect_to("/addposts/index")
    end

end