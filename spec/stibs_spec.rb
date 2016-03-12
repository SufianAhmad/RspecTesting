require "priceCalc"

describe "Stubes" do
  it "provide stibes to simulate" do
    calculator = PriceCalculator.new
   
   product_stub = instance_double("Product")
   allow(product_stub).to receive(:price).and_return(1000, 5)
    
    # calculator.add product_stub
    # calculator.add product_stub
   2.times { calculator.add product_stub }
    expect(calculator.final_price).to eq 1005
  end
end