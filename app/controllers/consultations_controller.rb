class ConsultationsController < ApplicationController


  def show
    @consultation = Consultation.find_by_id(params[:id])
    render :show
  end

  def index
    render :index
  end

end
