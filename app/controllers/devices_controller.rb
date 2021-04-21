class DevicesController < ApplicationController

    def index
        @user = User.find(params[:user_id])
        @devices = @user.devices
        render :index
    end

    def create
        @user = User.find(params[:user_id])
        @device = @user.devices.build(params.require(:device).permit(:deviceType, :brand, :model, :damage, :extra, :consultationAvailability))
        
        if @device.save
            flash[:success] = "Form submitted successfully"
            redirect_to user_devices_url(@user)
        else
            render :new
            flash.now[:error] = "Form unable to submit"
        end
    end

    def new
        @user = User.find(params[:user_id])
        @device = Device.new
        render :new
    end

end
