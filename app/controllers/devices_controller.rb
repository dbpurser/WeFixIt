class DevicesController < ApplicationController

    def index
        @user = User.find(params[:user_id])
        @devices = @user.devices
        render :index
    end
    def show
        @devices = Device.find(params[:device_id])
        render :show
    end
end
