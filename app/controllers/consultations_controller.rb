class ConsultationsController < ApplicationController
    
    def index
    end

    def show
        @consultation = Consultation.find_by_id(params[:id])
    end

end
