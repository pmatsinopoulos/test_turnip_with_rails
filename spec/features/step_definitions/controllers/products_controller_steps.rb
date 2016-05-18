steps_for :products_controller do
  def self.included(klass)
    # This tell the rspec to use `PageController` as the described class in the helper modules
    klass.controller(ProductsController) {}
  end

  step "Request to get the list of products" do
    get :index
  end

  step "Response contains the list of products in reverse order" do
    expect(response.status).to eq(200)
    products = Product.order(id: :desc).all.to_a

    products_assigned = assigns(:products)
    products_assigned.each_with_index do |pr, index|
      expect(pr).to eq(products[index])
    end
  end
end
