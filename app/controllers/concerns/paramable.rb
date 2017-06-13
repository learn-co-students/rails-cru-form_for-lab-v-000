module Paramable 
	def paramable(klass, *args)
  		params.require(klass).permit(*args)
	end
end