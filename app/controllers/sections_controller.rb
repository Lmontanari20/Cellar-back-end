class SectionsController < ApplicationController

    def create 
        section = Section.create(name: params[:name], cellar_id: params[:cellar_id], 
          rows: params[:rows], columns: params[:columns], x: params[:x], y: params[:y])
        render json: section
    end

    def show
      section = Section.all.select {|s| s.cellar.user_id === params[:id].to_i}
      render json: section
    end

    def index
        sections = Section.all
        render json: sections
    end
end
