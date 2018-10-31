class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @genre << @@genres
    @artist << @@artists
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

  def artists
    arts = []
    @@artists.each do |art|
      art << arts if arts.include?(art) == false
    end
    arts
  end
end
