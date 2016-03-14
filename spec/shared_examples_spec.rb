require "apis"

xdescribe WebApi do
  it "has a url" do
    api = WebApi.new "https://localhost:9292"
    expect(api).to respond_to :url
  end

  it "lists products" do
    api = WebApi.new "https://localhost:9292"
    expect(api.listProducts).to match [
      a_hash_including(
        name: an_instance_of(String),
        catagory: an_instance_of(String),
        price: an_instance_of(Float)
        )
    ]
  end
end