class WinesController < ApplicationController
    def index 
        wines = Wine.all
        render json: wines
    end

    def create
        wine = Wine.find_or_create_by(name: params[:name], wineType: params[:wineType], winery: params[:winery], year: params[:year])
        render json: wine
    end
end
