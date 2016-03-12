class Blog
  def initialize posts: []
    @posts = posts
  end

  def empty?
    @posts.empty?
  end
end