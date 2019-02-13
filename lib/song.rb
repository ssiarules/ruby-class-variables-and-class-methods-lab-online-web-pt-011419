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

# Song
#   #new
#     takes in three arguments: a name, artist and genre
#   - The way I was able to complete this first lab was to first create an instance class called Song. 
#              class Song
#               end 
# than define initialize set to three arguments - name, artist, and genre.
#         def initialize(name, artist, genre)
#         end 
#   #name
#     has a name
#    I than created a instant variable @name = name inside the initialize method - Every time an instance Song is created it will instantley provide the name of the song. 
#   #artist
#     has an artist
#     After I  created a instant variable @artist = artist inside the initialize method - Every time an instance Song is created it will instantley provide the name of the artist.
#   #genre
#     has a genre
#   After I  created a instant variable @genre = genre inside the initialize method.  - Every time an instance Song is created it will instantley provide the genre the artist belongs in.
#   class variables
#     has a class variable, @@count
#     has a class variable, @@artists, that contains all of the artists of existing songs
#     has a class variable, @@genres, that contains all of the genres of existingsongs
#   .count
#     is a class method that returns that number of songs created
# I than had to create a class variable @@count = 0  that will take a count of the number of songs it has stored return the number of song it has created. In order for the class variable to keep count I than had to create a class method .count that returns the current count of albums.
#         def self.count
#              @@.count 
#           end 
# I than have to create a class variable @@count += 1 
#   The count of albums should go up as soon as a new album is created, or initialized,  we are using the @@album_count class variable, inside of our #initialize method, which is an instance method. We are saying: when a new album is created, access the @@album_count class variable and increment its value by 1.
#     the self keyword refers to the entire class itself, not to an instance of the class.
#       A class variable is accessible to the entire class.
#   .artists
#     is a class method that returns a unique array of artists of existing songs
#        I than had to create a class method artists and within the class method returned 
#                 @@artists class variable 
#                 def self.artists
#                      @@artists.uniq
#                    end 
#The self. before the method name is a reminder that the method will not be running on a particular artist instance, but will be acting as the factory from which all artists are made: the Song class.
#   .genres - 
#     is a class method that returns a unique array of genres of existing songs
#   .genre_count
#     is a class method that returns a hash of genres and the number of songs that have those genres
#   .artist_count
#     is a class method that returns a hash of artists and the number of songs that have those artists
