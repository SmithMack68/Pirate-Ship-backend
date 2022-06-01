class ShipsController < ApplicationController
    get "/ships" do
        ship = Ship.all 
        ship.to_json
    end

    post "/ships" do
        ship = Ship.new(params[:ship])
        if ship.save
            ship.to_json
        else
            { errors: ship.errors.full_messages }.to_json
        end
    end

    
end