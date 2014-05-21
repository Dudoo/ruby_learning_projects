require_relative 'contest'

judge1 = Judge.new("blake")
judge2 = Judge.new("usher")
judge3 = Judge.new("shakira")
judge4 = Judge.new("adam")

contestant1 = Contestant.new("dustin", "singer")
contestant2 = Contestant.new("kellie", "dancer")

contest1 = Contest.new("Who's Got Talent?", 50000)
contest1.add_judges([judge1, judge2, judge3, judge4])
contest1.add_contestants([contestant1, contestant2])
puts contest1
puts contest1.start_contest

contest1.intro_judges

contest1.intro_contestants

performance1 = Performance.new("singing La Bamba", contestant1)
performance2 = Performance.new("dancing salsa", contestant2)

puts performance1.start_performance
puts performance1.end_performance

puts judge1.score_performance(performance1, 10)
puts judge2.score_performance(performance1, 1)
puts judge3.score_performance(performance1, 10)
puts judge4.score_performance(performance1, 9)
puts performance1.total_score

puts performance2.start_performance
puts performance2.end_performance

puts judge1.score_performance(performance2, 10)
puts judge2.score_performance(performance2, 9)
puts judge3.score_performance(performance2, 9)
puts judge4.score_performance(performance2, 9)
puts performance2.total_score

puts contest1.declare_winner
puts contest1.end_contest