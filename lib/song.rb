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
    genre_count = {}
    
    
    
    
    
    
    
    
    if @genre_count.include?
      
      
      
      
    if @genre_count[genre] == nil
      @genre_count[genre] = 0
      @genre_count[genre] = genre_count[genre] + 1
    else
      return genre_count[genre]
    end
  end
    
end


#creating a hash called genre count which is initally empty
#if the hash has the genre key, dont re-add the key, just add the the value
#if the hash does not have the genre key already existing, add the genre key, along with the value associated with with( ie 1)
