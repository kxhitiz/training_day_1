class JukeBox
  attr_accessor :playlist, :index, :total_songs

  def initialize(list)
    @playlist = list
    @index = 0
    @total_songs = list.length
    # puts list
  end

  def current
    # puts playlist
    playlist[index]
  end

  def next
    @index= (@index+1)%(@total_songs)
    playlist[index]
  end

  def previous
    @index = @index <= 0 ? @total_songs-1 : @index
    playlist[index]
  end
end
