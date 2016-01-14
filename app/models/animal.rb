class Animal < ActiveRecord::Base
	belongs_to :client
	belongs_to :shelter

	def owner
		if self.shelter
			self.shelter.name
		else 	
			self.client.name
		end
	end
	
end

