
class Jukebox
	PLAYLIST = ["hindi","english","nepali"]
	@@x = 0;


	def previous
		 @@x = @@x - 1
    puts PLAYLIST[@@x]
	end


	def next 
      @@x = @@x + 1
    puts PLAYLIST[@@x]

	end



end

