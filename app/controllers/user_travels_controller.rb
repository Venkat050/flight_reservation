class UserTravelsController < ApplicationController

    def create
        @user_travel = UserTravel.new
        @user_travel.user_id = session[:user_id]
        @user_travel.flight_id = params[:flight_id]
        @flight = Flight.find(params[:flight_id])
        @user_travel.date = session[:doj]
        @user_travel.noofseat = params[:user_travels][:noofseat]
        if @user_travel.save && @flight.noofseat >= params[:user_travels][:noofseat].to_i
            @flight.noofseat = @flight.noofseat - @user_travel.noofseat
            @flight.save
            render plain: "Booked Successfully"
        else
            redirect_to flight_path(params[:flight_id])
        end
    end
end