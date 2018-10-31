class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @genre << @@genres
  end
  def count
    @@count
  end
  def genres
    gens = []
    @@genres.each do |gen|
      gen << gens if gens.include?(gen) == false
    end
    gens 
  end
end