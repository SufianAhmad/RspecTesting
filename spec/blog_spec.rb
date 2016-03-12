require "blog"
require "post"

describe Blog do
  it "has no blog" do
    expect(Blog.new).to be_empty
  end

  it  "has one post when initialized" do
    expect(Blog.new(posts: [Post.new])).not_to be_empty
  end
end