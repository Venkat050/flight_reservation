class FlightTravelsController < ApplicationController

    def show
        @id = params[:id].inspect
        render plain: @id
    end
end
