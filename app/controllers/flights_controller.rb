class FlightsController < ApplicationController
   
    def index
        @flights = Flight.all
    end

    def new
        @flight = Flight.new
    end

    def search
        origin = params[:from]
        destination = params[:to]
        departure_date = params[:depart]
        return_date = params[:return]
        
        @flights = Flight.where(origin_city: origin, destination_city: destination, departure_date: departure_date, return_date: return_date)
        
        # Pass @flights to the view for rendering
      end

end
