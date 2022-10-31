class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  
  end

  def self.all
    @@all
  end

# returns an array of article instances the author has written
  def articles
    Article.all.select{|article| article.author == self.name}
  end



  


end
