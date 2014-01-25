class JukeBox
  attr_accessor :playlist, :current_index

  def initialize
    @current_index = 0
    @playlist = ["song1", "song2", "song3", "song4"]
  end

	def add_songs_to_playlist(song)
    @playlist.push(song)
  end

  def next 
    song = @playlist[@current_index + 1]
    if song
      @current_index += 1
      song
    else
      puts "Next song not available"
    end
  end

  def previous
    song = @playlist[@current_index - 1]
    if song && @current_index > 0
      @current_index -= 1
      song
    else
      puts "Previous song not available"
    end
  end

  def remove
    song = @playlist[@current_index]
    @playlist.delete(song)
  end

  def current
    playlist.at(current_index) 
  end

  def suffle
    @playlist.suffle.sample
  end

end