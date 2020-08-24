class SessionsController < ApplicationController

    def new
        @user = User.new
        if session[:user_id] != nil
            redirect_to root_path
        end
    end

    def create
        @user = User.find_by(email: params[:session][:email].downcase)
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to root_path
        else
            flash.now[:alert] = "Please check your email/password"
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end
end