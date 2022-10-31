require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

# americanah = Author.new("Chimamanda Ngozi")
# half_of_a_yellow_sun = Author.new("Chimamanda Ngozi")
sex_lives_of_african_women = Author.new("Nana Darkoa")

readers_digest = Magazine.new("readers digest", "african_stories")
all_african = Magazine.new("all_African", "history")
african_women = Magazine.new("african women", "women stories")

article_1 = Article.new(article1, readers_digest, "homegoing")
article_2 = Article.new(article2, readers_digest, "wahala")


sex_lives_of_african_women.add_article(readers_digest, "half a yellow sun")
sex_lives_of_african_women.add_article(readers_digest, "americannah")







### DO NOT REMOVE THIS
binding.pry

0
