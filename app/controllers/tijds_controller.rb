class TijdsController < ApplicationController

	def create
	  	@tijd = Tijd.new(tijd_params)

	  	@tijdnu = Time.now
	  	@tijdnu = @tijdnu.strftime("%Y-%m-%d %H:%M:%S")

	  	ingekomen_tijd =  Time.parse(params[:end_datetime])
			@tijd.end_datettime = ingekomend_tijd

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