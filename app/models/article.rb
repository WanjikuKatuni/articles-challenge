class Article

    attr_reader :author, :magazine, :title

    # array of all article instances

    @@all = []

    def initialize(author, magazine, title)

        @author = author
        @magazine = magazine
        @title = title

        # sends all instances to array
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        @author.name
    end

    def magazine
        @magazine.name
    end


end
