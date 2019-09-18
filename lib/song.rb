class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count +=1
  @@artists << artist
  @@genres << genre
  
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.unique
  end
  
  def self.genres
    @@genres
  end

  
  def self.artists_count
    artists_count = {}
    @@artist.each do |artist|
    if artists_count [artist]
      artists_count[artist] += 1 
    else
      artists_count[artist] = 1 
     end
    end
   artists_count
end
end