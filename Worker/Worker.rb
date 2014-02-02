require './Address.rb'

class Worker
	include Address

	attr_accessor :name, :age, :test_scores, :gender, :scores

	def test_scores(scores)
		@scores = scores
	end

	def isEligibleToBeCloudworker()
		(@city == "Kathmandu" and 
			@age > 18 and 
			(@scores.inject(0.0){ |sum, score| sum + score}) > 80)
	end

end