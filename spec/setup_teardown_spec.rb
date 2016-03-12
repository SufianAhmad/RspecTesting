require "blog"
require "post"

describe "call backs" do
  let(:blog){Blog.new}

  before(:example) do
    blog.populate!
  end

  it "has one post" do
    expect(blog.posts_count).to eq 1
  end
end