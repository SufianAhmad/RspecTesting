require "blog"
require "post"

xdescribe Blog do
  context "with no posts" do
    let(:blog){ Blog.new }

    it "has no blog" do
      expect(blog).to be_empty
    end
  end

  context "with one post" do
    let(:blog){Blog.new(posts: [Post.new])}

    it  "has one post when initialized" do
      expect(blog).not_to be_empty
    end

    it "count number of posts" do
      expect(blog.posts_count).to eq 1
    end
  end
end
