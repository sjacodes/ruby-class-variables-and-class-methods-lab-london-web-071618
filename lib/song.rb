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
  
  
  #creating a hash called genre count which is initally empty
#if the hash has the genre key, add the number one to it
#if the hash does not have the genre key already existing, add it

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.include?(genre)
        genre_count[genre] = genre_count[genre] + 1
      else
        genre_count[genre] = 1
      end
    end
    return genre_count
  end
  
  def self.artist_count
    artist_count = {}
    @artist_count.each do |artist|
      if artist_count.include?(artist)
        artist_count[artist] = artist_count[artist] + 1
      else
        artist_count[artist] = 1
      end
    end
    return artist_count
  end
  
end



