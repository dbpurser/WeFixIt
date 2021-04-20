class DevicesController < ApplicationController



    def new
        @types = Array['select','Phone', 'Laptop']
        @damage = Array['select','spilled-juice', 'explosion', 'fried harddrive', 'other']
        @user = User.find(params[:user_id])
        @device = Device.new
        render :new
    end
end
