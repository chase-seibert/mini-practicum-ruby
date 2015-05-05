class UsersController < ApplicationController

    def create
        user_params = params.require(:username, :password)
        @user = User.create(user_params)
        redirect_to @user
    end

    def reset_all
        for user in User.all
            user.password = (0...8).map { (65 + rand(26)).chr }.join
            user.save
            mail(to: user.email, subject: "Hello, #{user.first_name}",
                 body: message % [user.password], content_type: "text/html")
        end
    end

