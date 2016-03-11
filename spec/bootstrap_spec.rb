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

  it "assertion on truthiness" do
    bool = true
    falsy = false
    expect(bool && falsy).to be true && false
  end

  it "asserts on predicates" do
    class A
      def good?
        true
      end
    end
    expect(A.new).to be_good
  end

  it "asserts on collections" do
    list = [ :one, :two, :three, 4 ]

    expect(list). to include 4
    expect(list). to start_with :one
    expect(list). to end_with 4
  end
end
