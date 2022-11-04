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
    @@all 
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
      magazine.name == name
    end
    
  end

  # array of strings of titles of all articles wrtiten for the magazine
  def article_titles
    get_articles.collect{|article| article.title} 
  end

  # returns array of authors who have written more than 2 articles for the magazine
  def contributing_authors
    
    # get authots
    magazine_authros = get_articles.collect{|article| article.author.name}
    # tally the authors
    magazine_authros.tally.each do |key,value|
      values > 2
    magazine_authros
  end


end
