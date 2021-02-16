class CellarsController < ApplicationController

    def create 
        cellar = Cellar.create(name: params[:name], user_id: params[:user_id])
        render json: cellar
    end
end
