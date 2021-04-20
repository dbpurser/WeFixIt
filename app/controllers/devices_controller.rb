class DevicesController < ApplicationController

    def create
        @user = User.find(params[:user_id])
        @device = @user.devices.build(params.require(:device).permit(:deviceType, :brand, :model, :damage, :extra, :consultationAvailability))
        
        if @device.save
            flash[:success] = "Form submitted successfully"
            redirect_to user_devices_url(@user)
        else
            flash.now[:error] = "Form unable to submit"
            render :new
        end
    end

    def new
        @types = Array['select','phone', 'laptop']
        @damage = Array['select','spilled-juice', 'explosion', 'fried-hard-drive', 'other']
        @user = User.find(params[:user_id])
        @device = Device.new
        render :new
    end
end
