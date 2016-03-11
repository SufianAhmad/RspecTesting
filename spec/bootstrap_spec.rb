require "bootstrap"

describe Bootstrap do
  it "says hello" do
    expect(Bootstrap.new.hello).to include "Hello"
  end

  it "asserts on equality" do
    c = 15
    expect(c).to eq 15
  end

  it "asserts on mathematical operators" do
    c =10
    expect(c).to be <= 15
  end

  it "asserts on matching a regular expression" do
    email = "sufian@gmail.com"
    regular_expression = /^\w+@\w+\.com$/
    expect(email).to match regular_expression       
  end
end
