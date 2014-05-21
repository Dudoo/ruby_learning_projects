require_relative 'performance'
class Contestant
	attr_reader :name, :skill
	attr_accessor :scores
	
	def initialize(name, skill)
		@name = name.capitalize
		@skill = skill.capitalize
		@scores = 0
	end
	
	def to_s
		"Contestant's name: #{@name}, Contestant's skill: #{@skill}"
	end
		
	def scores=(score)
		@scores = score
	end
		
end