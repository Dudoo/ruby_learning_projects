require_relative 'contestant'
class Performance
	attr_reader :contestant, :description
	attr_accessor :score
	
	def initialize(description, contestant)
		@description = description
		@contestant = contestant
		@score = 0
	end
	
	def to_s
		"#{@contestant.name} will be #{@description}"
	end	
	
	def score=(score)
		@contestant.scores = score
		@score = score
	end
	
	def total_score
		"#{@contestant.name}'s total score for that performance is: #{@score}"
	end
	
	def start_performance
		"Here is the AMAZING #{@contestant.name} #{@description}!"
	end
	
	def end_performance
		"That was #{@contestant.name} #{@description}, give #{@contestant.name} a big round of applause. Great Job!"
	end
end
