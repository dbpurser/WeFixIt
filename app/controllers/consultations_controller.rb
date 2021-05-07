class ConsultationsController < ApplicationController
<<<<<<< HEAD
    
    def index
    end

    def show
        @consultation = Consultation.find_by_id(params[:id])
    end

=======
  def index
    render :index
  end
>>>>>>> main
end
