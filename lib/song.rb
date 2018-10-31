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
      gens << gen if gens.include?(gen) == false
    end
    gens
  end

  def self.artists
    arts = []
    @@artists.each do |art|
      arts << art if arts.include?(art) == false
    end
    arts
  end

  def self.genre_count
      genre_count = {}

      @@genres.each do |gen|
        genre_count[gen] = genre_count[gen] + 1
      end

    puts genre_count
  end
end
