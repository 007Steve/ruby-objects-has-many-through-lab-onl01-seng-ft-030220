class Artist 
  attr_accessor :name,:songs
  @@all  = []
  def initialize(name)
  @name = name
  #@songs = songs
  @@all << self
end

def self.all
  @@all
end
def songs
  Song.all.select {|song| song.artist == self}
end

def new_song(song_name,genre)
  Song.new(song_name,self,genre)
end

def genre
  Genre.all.select {|g| g.}
end

end 