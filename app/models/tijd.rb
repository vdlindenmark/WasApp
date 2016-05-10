class Tijd < ActiveRecord::Base
	belongs_to :machine

	def self.delete_run_innings
		@tijd_nu = Time.now
		@tijd_nu = @tijd_nu.strftime("%d/%m/%Y %H:%M")
		tijds = Tijd.where('end_datetime < ?', @tijd_nu)

		tijds.each do |tijd|
			tijd.destroy
		end
	end
end
