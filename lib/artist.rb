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


end 