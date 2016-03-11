require "bootstrap"

describe Bootstrap do
  it "says hello" do
    expect(Bootstrap.new.hello).to include "Hello"
  end

  it "calculate" do
    expect(Bootstrap.new.calc).to include "a + b = c"
  end
end
