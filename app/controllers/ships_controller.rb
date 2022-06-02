class ShipsController < ApplicationController
    get "/ships" do
        @ship = Ship.all
        ship_to_json
    end

    get "/ships/:id" do 
        @ship = Ship.find_by_id(params[:id])
        ship_to_json
    end

    post "/ships" do
        ship = Ship.new(params)
        if ship.save
            ship.to_json
        else
            { errors: ship.errors.full_messages }.to_json
        end
    end

    patch "/ships/:id" do
        ship = Ship.find_by_id(params[:id])
        if ship.update(params)
            ship.to_json
        else
            { errors: ships.errors.full_messages }.to_json
        end
    end
    
    delete "/ships/:id" do
        ship = Ship.find_by_id(params[:id])
        if ship
            ship.destroy
            ship.to_json
        else
            { errors: ["Ship does not exist"]}.to_json
        end
    end

    private

    def ship_to_json
        @ship.to_json(include: [pirates: {only: [:name, :title ]}], except: [:created_at, :updated_at])
    end
end