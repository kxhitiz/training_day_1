require './validator'

class Worker
	attr_accessor :name, :age, :gender, :test_scores, :address
	include Validator

	def initialize(params = {})
		@name = params[:name]
		@age = params[:age]
		@gender = params[:gender]
		@test_scores = params[:test_scores]
		@address = params[:address]
	end

end
