class Song
    attr_accessor :title, :artist, :genre
    @@all = []

    def initialize(title, artist, genre)
        @title = title
        @artist = artist
        @genre = genre
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
end