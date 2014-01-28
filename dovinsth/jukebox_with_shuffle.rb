class JukeBox

	def initialize(geet_haru, shuffle=false)
		@shuffle = shuffle
		@geet = geet_haru
		@where_i_am_now = 3
		@first_index = 0
		@last_index = geet_haru.size-1
	end

	def now()
		index = @where_i_am_now
		@geet[index]
	end

	def next()
		if @shuffle 
			@where_i_am_now = rand(@last_index + 1) 
		else
			@where_i_am_now = (@where_i_am_now == @last_index) ? @first_index : (@where_i_am_now + 1)
		end
		@geet[@where_i_am_now]
	end

	def previous()
		if @shuffle 
			@where_i_am_now = rand(@last_index + 1) 
		else
			@where_i_am_now = (@where_i_am_now == @first_index) ? @last_index : (@where_i_am_now - 1)
		end
		@geet[@where_i_am_now]
	end

end