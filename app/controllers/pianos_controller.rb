class PianosController < ApplicationController
	# before_action :authenticate_user!

	def create
    # @pianos = Piano.all
    @piano = Piano.new(piano_params)
    if @piano.save
      redirect_to @piano.customer
    else
      render :back
    end
  end
    # respond_to do |format|
    #   if @piano.save
    #     format.html { redirect_to (customers_path(@piano.customer)) }
    #   else
    #     format.html { render :action => "new" }
    #   end
    # end
	# end

	private

	def piano_params
		params.require(:piano).permit!
	end

end