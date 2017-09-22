require 'pry'

class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    # @@songs << self
    @@genres << self.genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_counter = Hash.new
    @@genres.each do |genre|
      # binding.pry
      if genre_counter[genre] == nil
        genre_counter[genre] = 1
      else
        genre_counter[genre] += 1
      end
    end
    genre_counter
  end

  def self.artist_count
    artist_counter = Hash.new
    @@artists.each do |artist|
      if artist_counter[artist] == nil
        artist_counter[artist] = 1
      else
        artist_counter[artist] += 1
      end
    end
    artist_counter
  end

end
