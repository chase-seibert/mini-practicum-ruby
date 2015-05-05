class UsersController < ApplicationController

    def create
        user_params = params.require(:username, :password)
        @user = User.create(user_params)
        redirect_to @user
    end

