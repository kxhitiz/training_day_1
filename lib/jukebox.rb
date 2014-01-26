class Jukebox
  attr_accessor :playlist
  def initialize(*args)
    @playlist = *args
  end

  def current
    if playlist.length <= 0
      "There are no songs on the playlist"
    else
      playlist.first  
    end
  end

  def next
    @playlist.rotate!
    song = @playlist.first
    if song
      song
    else
      "No songs on playlist"
    end
  end

  def previous
    @playlist.rotate!(-1)
    song = @playlist.first
    if song
      song
    else
      "No songs on playlist"
    end
  end
  
  
end