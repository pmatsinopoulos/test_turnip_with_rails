steps_for :products_controller do
  def self.included(klass)
    # This tell the rspec to use `PageController` as the described class in the helper modules
    klass.controller(ProductsController) {}
  end

  step "The following list of products:" do |table|
    table.hashes.each do |product|
      create :product, name: product['name']
    end
  end

  step "Request to get the list of products" do
    get :index
  end

<<<<<<< HEAD:spec/features/step_definitions/controllers/products_controller_steps.rb
  step "I get the list of products in reverse order" do
=======
  step "Response contains the list of products in reverse order" do
>>>>>>> c987f6f... Models and Controllers tested with features:spec/features/step_definitions/controllers/products_controller_steps.rb
    expect(response.status).to eq(200)
    products = Product.order(id: :desc).all.to_a

    products_assigned = assigns(:products)
    products_assigned.each_with_index do |pr, index|
      expect(pr).to eq(products[index])
    end
  end
end
