steps_for :product do
  step "A Product" do
    @product = build :product
  end

  step "Product does not have name" do
    @product.name = nil
  end

  step "Product is invalid and name has relevant errors" do
    expect(@product.valid?).to eq(false)
    expect(@product.errors[:name]).to include("can't be blank")
  end
end

