steps_for :product_requests do
  step "One sends the request to get product list" do
    get "/products"
  end

  step "The response returns a page with product list" do
    assert_select "#products-index-header", "Listing Products"
  end
end

