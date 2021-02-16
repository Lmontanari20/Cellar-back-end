class BottlesController < ApplicationController
    def create
        bottle = Bottle.create(price: params[:price], wine_id: params[:wine_id], row: params[:row], column: params[:column], section: params[:section])
        
        render json: bottle
    end

    def index 
        bottles = Bottle.all
        render json: bottles
    end
end
