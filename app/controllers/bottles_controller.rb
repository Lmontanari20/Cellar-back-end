class BottlesController < ApplicationController
    def create
        bottle = Bottle.create(price: params[:price], size: params[:size], wine_id: params[:wine_id], row: params[:row], column: params[:column], section_id: params[:section_id])
        
        render json: bottle
    end

    def index 
        bottles = Bottle.all
        render json: bottles
    end

    def show 
        bottles = User.find(params[:id]).bottles
        render json: bottles
    end

    def update 
        bottle = Bottle.find(params[:id])
        bottle.update(row: params[:row], column: params[:column], price: params[:price], size: params[:size])
    end
end
