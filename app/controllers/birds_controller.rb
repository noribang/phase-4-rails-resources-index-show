class BirdsController < ApplicationController
    # GET /birds
    # All birds
    def index
        # All instances of Bird model 
        birds = Bird.all
        render json: birds
    end

    # GET /birds/:id
    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render json: { error: "Bird not found"}, status: :not_found
        end
    end


end
