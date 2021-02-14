class SectionsController < ApplicationController

    def create 
        section = Section.create(name: params[:name], cellar_id: params[:cellar_id], rows: params[:rows], columns: params[:columns])
        render json: section
    end
end
