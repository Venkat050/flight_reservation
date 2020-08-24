class FlightsController < ApplicationController

    def index
       if session[:user_id] == nil
            redirect_to login_path
       end
        @flag = false
        @src = params[:source]
        @dest = params[:destination]
        @doj = params[:doj]
        session[:doj] = @doj
        if @src.present? && @dest.present? && @doj.present?
            @flag = true
            @flights = Flight.where(source: @src, destination: @dest).joins(:flight_travels).where('flight_travels.date' => @doj)
        end
    end

    def booking
        @id = params[:id]
        @flight = Flight.find(@id)
        
    end
end