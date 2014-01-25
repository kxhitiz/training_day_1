class JukeBox
	attr_accessor :current, :list

	def initialize
		@current = 0
		@list = ['Song 1', 'Song 2', 'Song 3', 'Song 4', 'Song 5']
	end

	def get_current
		puts 'Getting current item'
		puts @list[@current]
	end

	def next
		puts 'Called Next. Moving to next item.'
		@current += 1
		get_current
	end

	def prev
		puts 'Called Prev. Moving to prev item.'
		@current -= 1
		get_current
	end
end