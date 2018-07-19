require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
    
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    #creating an empty hash called genre_count
    genre_count = {}
    #for the class variable genres, for each genre, see if it includes the new genre. If it already does, add a count of one to it. 
    @@genres.each do |genre|
      if genre_count.include?(genre)
        genre_count[genre] = genre_count[genre] + 1
    #if it doesnt exist already within the hash, add it. 
      else
        genre_count[genre] = 1
      end
    end
    #return the hash
    return genre_count
  end
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count.include?(artist)
        artist_count[artist] = artist_count[artist] + 1
      else
        artist_count[artist] = 1
      end
    end
    return artist_count
  end
  
end



