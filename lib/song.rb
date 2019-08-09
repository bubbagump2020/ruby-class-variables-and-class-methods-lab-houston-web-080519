require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_hash = {}
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists.push(artist)
    @genre = genre
    @@genres.push(genre)
  end
  
  def self.count
    return @@count
  end
  
  def self.artists
    @@artists.uniq!
    return @@artists
  end
  
  def self.genres
    @@genres.uniq!
    return @@genres
  end
  
  def self.genre_count
    @@genres.each do |genre|
      genre = @@genres.shift
      @@genres = {genre => genre.count}
    
    
  end
  
end