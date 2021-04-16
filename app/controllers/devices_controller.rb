class DevicesController < ApplicationController

    def index
        @user = User.find(params[:user_id])
        @devices = @user.devices
        render :index
    end
end
