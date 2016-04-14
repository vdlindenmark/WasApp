class MachinesController < ApplicationController
	def index
		@machines = Machine.all()
	end

	def new
		@machine = Machine.new()
	end

	def show
	end

	def edit
		@machine = Machine.find(params[:id])
	end

	def destroy
		@machine = Machine.find(params[:id])
		@machine.destroy
	end

	def update
		@machine = Machine.find(params[:id])

		if @machine.update(machine_params)
			redirect_to @machine
		else
			render 'edit'
		end
	end

	def create
		@machine = Machine.new(machine_params)
		if @machine.save
			redirect_to @machine
		else
			render 'new'
		end
	end

	private
  	def machine_params
  		params.require(:machine).permit(:kind, :machine_id)
  	end
end