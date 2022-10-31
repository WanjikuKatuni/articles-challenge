class Magazine
  attr_accessor :name, :category


  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    # return array of magazine instances
    @@all << self

  end

  def self.all
    @@all << self
  end

  # return an array of author isntances who have written for the magazine.
  def get_articles
    Article.all.select{|article| article.magazine.name == self.name}
  end

  def contributors
    get_articles.collect{|article| article.author}.uniq
    
  end


end
