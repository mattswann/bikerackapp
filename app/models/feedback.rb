class Feedback < ActiveRecord::Base
	belongs_to :bikeracks


	def self.site
		%w(Good-Lighting Good-Clearence Obstructions-Free CCTV Other)
	end

end
