class PiratesController < ApplicationController
    get "/pirates" do
        pirate = Pirate.all 
        pirate.to_json(except: [:ship_id, :created_at, :updated_at])
    end

    get "/pirates/:id" do
        pirate = Pirate.find_by_id(params[:id])
        pirate.to_json(except: [:ship_id, :created_at, :updated_at]) 
    end

    post "/pirates" do
        pirate = Pirate.new(params)
        if pirate.save
            pirate.to_json
        else
            { errors: pirate.errors.full_messages }.to_json
        end
    end

    post "/ships/:ship_id/pirates" do
        find_ship
        @pirate = @ship.pirates.build(params)
        @pirate.save
        @pirate.to_json
    end


    patch "/pirates/:id" do
        pirate = Pirate.find_by_id(params[:id])
        if pirate.update(params)
            pirate.to_json
        else
            { errors: pirates.errors.full_messages }.to_json
        end
    end

    delete "/pirates/:id" do
        pirate = Pirate.find_by_id(params[:id])
        if pirate
            pirate.destroy
            pirate.to_json
        else
            { errors: ["Arggggh, that pirate does not exist"] }.to_json
        end
    end

    private

    def find_ship 
        @ship = Ship.find_by_id(params[:ship_id])
    end

         
end