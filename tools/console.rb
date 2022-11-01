require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author_1 = Author.new("Yaaa ayosi")
author_2= Author.new("Chimamanda Ngozi")
author_3= Author.new("Nana Darkoa")

mag_1= Magazine.new("readers digest", "african_stories")
mag_2= Magazine.new("all_African", "history")
mag_3 = Magazine.new("african women", "women stories")

article_1 = Article.new(author_1, mag_1, "homegoing")
article_2 = Article.new(author_2, mag_2, "americannah")
article_3 = Article.new(author_3, mag_3, "wahala")

author_2.add_article(mag_2, "half a yellow sun")
author_2.add_article(mag_2, "new book")







### DO NOT REMOVE THIS
binding.pry

0
