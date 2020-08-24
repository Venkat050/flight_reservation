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
          flash[:notice] = "Account created succesfully!"
          redirect_to root_path
        else
            render 'new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
