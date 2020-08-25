class FlightsController < ApplicationController

    def index
       if session[:user_id] == nil
            redirect_to login_path
       end
        @flys = Flight.all
        @flag = false
        @src = params[:source]
        @dest = params[:destination]
        @doj = params[:doj]
        session[:doj] = @doj
        @msg = ""
        if @src.present? && @dest.present? && @doj.present?
            @flag = true
            @flights = Flight.where(source: @src, destination: @dest).joins(:flight_travels).where('flight_travels.date' => @doj).order(:time)
            if !@flights.present?
                @msg = "No Services (Try the other dates)"
            end
        end
    end

    def booking
        @id = params[:id]
        @flight = Flight.find(@id)
        
    end
end