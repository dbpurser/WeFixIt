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

    def create
        @user = User.find(params[:user_id])
        @device = @user.devices.build(params.require(:device).permit(:deviceType, :brand, :model, :damage, :extra, :consultationAvailability))
        
        if @device.save
            flash[:success] = "Form submitted successfully"
            redirect_to new_user_device_confirmation_url(@user, @device)
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

    def destroy
        @user = User.find(params[:user_id])
        @device = @user.devices.find(params[:device_id])
        @device.destroy
        flash[:success] = "Device was successfully destroyed."
        redirect_to user_devices_url(@user)
    end
    
    def confirm
        @user = User.find(params[:user_id])
        @device = @user.devices.find(params[:device_id])
       
        render :confirmation
    end

end
