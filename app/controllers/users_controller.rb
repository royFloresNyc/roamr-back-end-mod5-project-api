class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :edit, :destroy]

    def index
        users = User.all 
        render json: users
    end 

    def show 
        if @user
            render json: @user
        else 
            render json: {message: 'User not found'}
        end 
    end 

    def create
    end 

    def edit
    end 

    def destroy
    end 

    private

    def find_user
        @user = User.find(params[:id])
    end 
end
