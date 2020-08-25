class UserTravelsController < ApplicationController
    def show
        @flight = Flight.find(@user_travel.flight_id)
    end

    def create
        @user_travel = UserTravel.new
        @user_travel.user_id = session[:user_id]
        @user_travel.flight_id = params[:flight_id]
        @flight = Flight.find(params[:flight_id])
        @user_travel.date = session[:doj]
        @user_travel.noofseat = params[:user_travels][:noofseat]
        if @user_travel.save
            render 'show'
        else
            redirect_to flight_path(params[:flight_id])
        end
    end
end