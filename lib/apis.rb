class WebProducts 
  attr_reader :name, :catagory, :price
  def initialize name, catagory, price
    @name = name
    @catagory = catagory
    @price = price
  end
end

class WebApi
  attr_reader :url
  def initialize url
    @url = url
  end

  def listProducts
    products = fetch_from_outside
    products.map do |product|
      {
        name: product.name,
        catagory: product.catagory,
        price: product.price
      }
    end  
  end

  def fetch_from_outside
    [
      WebProducts.new("Apple", "Fruit", 10.1)
    ]
  end
end