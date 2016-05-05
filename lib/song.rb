require 'pry'

class Song

attr_accessor :name,:genre

@@all = []

def initialize(name,artist=nil)
  @name = name
  @songs = []
end

def artist=(artist)
  @artist = artist
  artist.add_song(self)
end

def artist
  @artist
end

def self.all
@@all
end

def self.destroy_all
  @@all.clear
end

def save
@@all << self
end

def self.create(name)
  song = self.new(name)
  song.save
  song
end


end