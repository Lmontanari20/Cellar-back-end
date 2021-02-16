class SectionsController < ApplicationController

    def create 
        section = Section.create(name: params[:name], cellar_id: params[:cellar_id], rows: params[:rows], columns: params[:columns])
        render json: section
    end

    def show
        section = Section.where(user_id: params[:id])
        render json: section
    end

    def index
        sections = Section.all
        render json: sections
    end
end
