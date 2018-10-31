class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    gens = []
    @@genres.each do |gen|
      gen << gens if gens.include?(gen) == false
    end
    gens
  end

  def self.artists
    arts = []
    @@artists.each do |art|
      art << arts if arts.include?(art) == false
    end
    arts
  end

  def self.genre_count
      genre_count = {}

      @@genres.each do |gen|
        genre_count[e] = genre_count[e] + 1
      end

    puts genre_count
  end
end
