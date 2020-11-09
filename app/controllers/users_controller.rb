class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]
    skip_before_action :authorized, only: [:create]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
        @users = User.all 
        render json: {user: UserSerializer.new(@user)}
    end 

    def show 
        if @user
            render json: {user: UserSerializer.new(@user)}
        else 
            render json: {message: 'User not found'}
        end 
    end 

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: {user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: {error: 'failed to create user'}, status: :not_acceptable
        end 
    end 

    def update
        @user.update(user_params)
        if @user.valid?
            render json: {user: UserSerializer.new(@user)}
        else
            render json: {error: 'failed to update user'}, status: :not_acceptable
        end 
    end 

    def destroy
    end 

    private

    def find_user
        @user = User.find(params[:id])
    end 

    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation, :first_name, :last_name, :email_address)
    end 
end


