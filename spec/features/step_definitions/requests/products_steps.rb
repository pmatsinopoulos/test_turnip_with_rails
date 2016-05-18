steps_for :product_requests do
  step "The request to get product list" do
    get "/products"
  end

  step "Returns a page with product list" do
    assert_select "#products-index-header", "Listing Products"
  end
end

