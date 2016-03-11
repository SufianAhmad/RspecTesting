describe "Composable Matchers" do
  it "work with nested data" do
    class Product
      def initialize id, name, catagory
        @id = id
        @name = name
        @catagory = catagory
      end

      def serial_data
        [
          @name,
          @catagory,
          @id
        ]
      end
    end
    product = Product.new 115, "Apple", "Fruit"

    expect(product.serial_data).to match [
      a_string_starting_with("Apple"),
      a_string_starting_with("Fruit"),
      a_value = 115
    ]
  end
end