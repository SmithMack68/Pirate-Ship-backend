class PiratesController < ApplicationController
    get "/pirates" do
        pirate = Pirate.all 
        pirate.to_json 
    end

    post "/pirates" do
        pirate = Pirate.new(params[:pirate])
        if pirate.save
            pirate.to_json
        else
            { errors: pirate.errors.full_messages }.to_json
        end
    end

end