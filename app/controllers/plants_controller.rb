class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants, status: :ok
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant, status: :ok
    end

    def create
        new_plant = Plant.create(plants_params)
        render json: new_plant, status: :created
    end

    private
    def plants_params
        params.permit(:name, :image, :price)
    end
end
