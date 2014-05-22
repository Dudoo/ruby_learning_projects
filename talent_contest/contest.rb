require_relative 'judge'
require_relative 'contestant'
require_relative 'host'
class Contest
	attr_reader :name, :judges, :contestants, :reward, :hosts
	
	def initialize(name, reward)
		@name = name
		@judges = []
		@contestants = []
		@reward = reward
		@winning_contestant = ""
		@hosts = []
	end
	
	def to_s
		"Welcome to #{@name}!!!".ljust(50, '.') 
	end
	
	def start_contest
		"Let's see who's got talent!!"
	end
	
	def end_contest
		"Thanks everyone for a great night and we hope to see you next time on #{@name}!"
	end
			
	def add_judges(judges)
		@judges = judges
	end
	
	def add_contestants(contestants)
		@contestants = contestants
	end
	
	def add_hosts(hosts)
	  @hosts = hosts
	end
	
	def intro_judges
		puts "Say hello to our judges!!!"
		@judges.each do |judge|
			puts "#{judge}!"
		end
	end

	def intro_contestants
		puts "Now let's meet our contestants!!!"
		@contestants.each do |contestant|
			puts contestant
		end
	end	
	
	def calc_contest_winning_score
		winning_score = 0
		@contestants.each do |contestant|
			if contestant.scores > winning_score
				winning_score = contestant.scores
				@winning_contestant = "#{contestant.name}"
			end
		end
		"#{@winning_contestant}"
	end
	
	def declare_winner		
		"The winner of #{@name} and $#{@reward} is #{calc_contest_winning_score}!"
	end
	
end
