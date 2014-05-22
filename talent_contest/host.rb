class Host
	attr_reader :name

	def initialize(name)
	  @name = name
	end
	
	def to_s
	  "Hi, I'm #{name}"
	end
end