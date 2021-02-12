class UsersController < ApplicationController

    def create
        user = User.find_by(username: params[:username])

        if user
            render json: {message: "This username has already been taken"}
            return
        else 
            user = User.create(username: params[:username])
            render json: user
        end
    end

    def show 
        user = User.find_by(username: params[:id])
        
        if !user 
            render json: {message: "Incorrect username"}
            return
        end
        render json: user
    end
end
