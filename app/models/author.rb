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

  # return a unique array of magazine instances for which the author has contributed to
  def magazines
    all_authors_magazines = articles.map{|article| article.magazine}
    all_authors_magazines.uniq
  end

  # given a magazine and a title, creates a new article instance and assoiats ot with the author of that magazine
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  # unique array with the categories of magazines the author has contributed to
  def topic_areas
    magazines.collect{|magazine| magazine.category}.uniq
  end


  


end
