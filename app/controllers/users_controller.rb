class UsersController < ApplicationController

    def new
        if session[:user_id] != nil
            redirect_to root_path
        end
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save 
          flash[:notice] = "Article created succesfully!"
          redirect_to root_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
      end
end
