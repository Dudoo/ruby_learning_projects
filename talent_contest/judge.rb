require_relative 'performance'
class Judge
	attr_reader :name
	
	def initialize(name)
		@name = name.capitalize
	end
	
	def to_s
		"#{@name}!"
	end	
	
	def score_performance(performance, score)
		performance.score += score
		"#{@name} gave #{performance.contestant.name}'s performance a #{score}"
	end
	
	def comment_on_performance(comment)
		"#{name} says: #{comment}"
	end
		
end