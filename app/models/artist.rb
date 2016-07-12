class Artist < ActiveRecord::Base
	has_many :songs
	
	def to_s
		self.name
	end
end
