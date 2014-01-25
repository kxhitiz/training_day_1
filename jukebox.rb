def mode(action,i)

		playlist = [ "a","c","d","e","f" ]
		case action
		when "F"
			i += 1
		when "R"
			i -= 1
		end

		if i < 0
			puts "Playing last song: #{playlist[i]}"
			i = playlist.length
		elsif
			 i > 4
			puts "Playing first song: #{playlist[i]}"
			i = 0
		else
			puts "Slected song: #{playlist[i]}"
		end
	end


puts "enter the sequence 1 to 4"
i = gets.chomp.to_i

mode "R",i
mode "F",i
