# you have to send an array geet_haru while creating object.

class JukeBox

    def initialize(geet_haru)
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
        @where_i_am_now = (@where_i_am_now == @last_index) ? @first_index : (@where_i_am_now + 1)
        @geet[@where_i_am_now]
    end

    def previous()
        @where_i_am_now = (@where_i_am_now == @first_index) ? @last_index : (@where_i_am_now - 1)
        @geet[@where_i_am_now]
    end

end
