class PianosController < ApplicationController
  # before_action :authenticate_user!

  def create
    @piano = Piano.new(piano_params)
    if @piano.save
      redirect_to @piano.customer
    else
      render :back
    end
  end

  private

  def piano_params
    params.require(:piano).permit!
  end

end