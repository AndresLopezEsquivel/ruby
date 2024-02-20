# Each instance of the Album class saves
# a list of songs

class Album
    include Enumerable
    # songs is an array of strings,
    # where each string is the name of a song
    attr_reader :songs

    # Initialize an empty songs list
    def initialize
        @songs = []
    end

    # Add a song to the songs array
    def add_song(name)
        songs << name
    end

    # Iterate over the array of songs
    def each
        songs.each { |song| yield(song) }
    end
end