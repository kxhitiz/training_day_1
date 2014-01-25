class JukeBox
	attr_accessor :current, :list

	def initialize
		@current = 0
		@list = ['Song 1', 'Song 2', 'Song 3', 'Song 4', 'Song 5']
	end
end