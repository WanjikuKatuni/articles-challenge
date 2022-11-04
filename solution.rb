# Please copy/paste all three classes into this file to submit your solution!


# author

class Author

  attr_reader :name


  def initialize(name)
    @name = name
  
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



#   magazine


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

  

#   article

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


end
