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
  
  
end