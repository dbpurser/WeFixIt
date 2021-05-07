class RepairController < ApplicationController
    def create
        @repair = current_user.repairs.build(params.require(:repair).permit(:status, :completed, :specialist))
        if @repair.save
          flash[:success] = 'repair post was successfully created.'
          redirect_to user_devices_repairs_path(@repair)
        else
          flash.now[:error] = 'Unable to create repair.'
          render :new
        end
      end
        
end
