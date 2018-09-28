require 'pry'
class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []

  end

  def add_post(post)
  #binding.pry
    post.author = self
    self.posts << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
    post
  end

  def self.post_count
    counter = 0
    self.all.each do |a|
    counter += a.posts.size
    end
    counter
  end
end



    




