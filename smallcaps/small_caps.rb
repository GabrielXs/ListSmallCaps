class SmallCaps 
	attr_accessor :header, :data
	def initialize()
		@header = []
		@data = []
	end
	
	def setHeader(data)
		@header << data
	end	
	def getHeader
		self.header
	end

	def setData(data)
		@data << data
	end

	def getData
		self.data
	end
end