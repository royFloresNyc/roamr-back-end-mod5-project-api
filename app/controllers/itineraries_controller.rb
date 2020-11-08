class ItinerariesController < ApplicationController
    skip_before_action :authorized, only: [:create, :show, :destroy]

    # def show
    #     @itinerary = Itinerary.find(params[:id])
    #     render json: {itinerary: ItinerarySerializer.new(@itinerary)}
    # end 
    def create
        @itinerary = Itinerary.create(itinerary_params)
        if @itinerary.valid?
            render json: {itinerary: ItinerarySerializer.new(@itinerary)}, status: :created
        else
            render json: {error: 'failed to create itinerary'}, status: :not_acceptable
        end 
    end 

    private

    def itinerary_params
        params.require(:itinerary).permit!
    end 
end
