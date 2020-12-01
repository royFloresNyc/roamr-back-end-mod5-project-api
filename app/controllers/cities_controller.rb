class CitiesController < ApplicationController
    require 'amadeus'

    skip_before_action :authorized, only: [:poi]

    def poi
        amadeus = Amadeus::Client.new({
            client_id: ENV['amadeus_api_key'], 
            client_secret: ENV['amadeus_secret'] 
        })
        begin
            # resp = amadeus.reference_data.locations.points_of_interest.get( { latitude: params[:lat], longitude: params[:lng] })
            resp = amadeus.reference_data.locations.points_of_interest.get( { latitude: params[:lat], longitude: params[:lng], radius: 5, categories: 'SIGHTS' })
            render json: {poi: resp.data, authorization: resp.request.bearer_token}
        rescue Amadeus::ResponseError => error
            render json: error
        end
    end 
end
