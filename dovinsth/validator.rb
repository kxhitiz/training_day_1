module Validator
	MIN_AGE = 18
	CITY = "KATHMANDU"
	MIN_TEST_SCORE = 80.0

	def calc_avg_test_score
		test_scores.inject(0) {|total_score, score| total_score + score}.to_f /  test_scores.length
	end

	def is_eligible?
		avg_test_score = calc_avg_test_score
		(age >= MIN_AGE && avg_test_score >= MIN_TEST_SCORE && ((address.city.upcase) == CITY)) ? true : false
	end

end
