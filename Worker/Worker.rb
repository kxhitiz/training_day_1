class Worker
	attr_accessor :name, :age, :test_scores, :gender, :scores

	include Address

	def test_scores(scores)
		@scores = scores
	end

end