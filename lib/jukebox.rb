class Jukebox
  attr_accessor :playlist
  def initialize(*args)
    @playlist = *args
  end

  def current
    current_song_on_playlist
  end

  def next
    @playlist.rotate!
    current_song_on_playlist
  end

  def previous
    @playlist.rotate!(-1)
    current_song_on_playlist
  end
  
  private
    def current_song_on_playlist
      song = @playlist.first
      if song
        song
      else
        "No songs on playlist"
      end
    end
end