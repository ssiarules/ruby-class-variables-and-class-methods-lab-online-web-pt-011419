class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  # Your trying to shovel the instance of artists into the class variable @@artists
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist 

    # how can I check if @@genres already includes @genre?
    # if @@genres already contains this genre, don't do the next line.
    
    # @@genres = ["rock"]
    # @genre = "rock"
    
    # if !@@genres.include?(@genre)
      @@genres << @genre
    # end 
  end 

  
  def self.genres
    @@genres.uniq
  end 
    
  def self.artists
    @@artists.uniq 
  end 

  def self.genre_count
    # @@genres = ["rap", "rap", "pop", "dance", "rap"]
    genre_count = {}
    
    @@genres.each do |genre|
      if !genre_count[genre]
        genre_count[genre] = 1
      else
        genre_count[genre] += 1
      end
      
    end
    
    genre_count 
  end 
  
  def self.artist_count 
    artist_count = {}
    @@artists.each do |artist|
      if !artist_count[artist]
        artist_count[artist] = 1 
      else 
        artist_count[artist] += 1 
      end 
    end 
    artist_count
  end  

    
  def self.count
    @@count 
  end 
    
   
   
end 
