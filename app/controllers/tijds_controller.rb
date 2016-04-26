class TijdsController < ApplicationController

	def create
	  	@tijd = Tijd.new(tijd_params)

	  	@tijd_nu = Time.now
	  	@tijd_nu.strftime("%d/%m/%Y %H:%M")

	  	ingevulde_tijd = params[:tijd][:end_datetime]
	  	ingevulde_tijd = ingevulde_tijd.to_i

	  	@uiteindelijke_tijd = @tijd_nu + ingevulde_tijd.minutes
	  	@uiteindelijke_tijd = @uiteindelijke_tijd.strftime("%d/%m/%Y %H:%M")
	  	@tijd.end_datetime = @uiteindelijke_tijd

	  	if @tijd.save
	  		redirect_to tijds_path
	  	end
	end

	def index
		@tijds = Tijd.all()
	end

	def show
	end

	def new
		@tijd = Tijd.new()
	end

	private
  	def tijd_params
  		params.require(:tijd).permit(:end_datetime)
  	end

end