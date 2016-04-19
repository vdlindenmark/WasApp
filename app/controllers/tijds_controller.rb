class TijdsController < ApplicationController
	belongs_to :machines

	def create
	  	@tijd = Tijd.new(tijd_params)
	  	if @tijd.save
	  		redirect_to tijds_path
	  	end
	end

	def index
	end

	def show
	end

	def new
		@tijd = Tijd.new()
	end

end