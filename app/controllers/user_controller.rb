class UserController < ApplicationController
    def show
        @user = User.find(params[:id])
        render :show
    end
    def cuslist
        @users = User.all
        render :cuslist
    end
end
