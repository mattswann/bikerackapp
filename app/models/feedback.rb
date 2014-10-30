class Feedback < ActiveRecord::Base
	has_and_belongs_to_many :bikeracks


	def self.site
		%w(Good-Lighting Good-Clearence Obstructions-Free CCTV Other)
	end

end
