require "book"

fdescribe Book do
  it "fails to create book" do
    book = build(:book)
  end  
end