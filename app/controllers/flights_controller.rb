class FlightsController < ApplicationController
   
    def index
        @flights = Flight.all
    end

    def new
        @flight = Flight.new
    end

    def search
        origin = params[:origin]
        destination = params[:destination]
        departure_date = params[:departure_date]
        
        @flights = Flight.where(origin_city: origin, destination_city: destination, departure_date: departure_date)
        
        # Pass @flights to the view for rendering
      end

end
