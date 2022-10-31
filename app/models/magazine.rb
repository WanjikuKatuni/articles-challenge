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


end
