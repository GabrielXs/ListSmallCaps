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

	def headerConcat
		head = ''
		self.header.each_with_index do |val, idx|
			if idx < (self.header.size - 1)
				head.concat(val.to_s + ";")
			else
				head.concat(val.to_s + ";\n")
			end
		end
	end

	def setData(data)
		@data << data
	end

	def getData
		self.data
	end

	def dataConcat
		cont = 0
		data = ''
		for i in 0...self.data.size
			for ii in 0...self.header.size
				if ii < (self.header.size - 1)
					data.concat(self.data[cont].to_s + ";")	
				else
					data.concat(self.data[cont].to_s + ";\n")
				end
				if cont >= self.data.size
					break
				end
				cont+=1
			end
			if cont >= self.data.size
				break
			end
		end
		
	end





end