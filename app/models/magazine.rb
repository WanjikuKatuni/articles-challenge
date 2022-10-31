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

  # returns first object that matches the name
  def self.find_by_name(name)

    find_magazines = self.all.find do |magazine| 
      magazine.name == name}
    end
    
  end

  # array of strings of titles of all articles wrtiten for the magazine
  def article_titles
    get_articles.collect{|article| article.title} 
  end


end
