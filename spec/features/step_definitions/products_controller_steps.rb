steps_for :products_controller do
  def self.included(klass)
    require 'pry'; binding.pry
    # This tell the rspec to use `PageController` as the described class in the helper modules
    klass.controller(ProductsController) {}
  end

  step "The following list of products:" do |table|
    table.hashes.each do |product|
      create :product, name: product['name']
    end
  end

  step "I request the list of products" do
    get :index
  end

  step "I get the list of products:" do |table|
    expect(response.status).to eq(200)
    products = Product.order(id: :desc).all.to_a
    table.hashes.each_with_index do |product, index|
      expect(product['name']).to eq(products[index].name)
    end
  end
end
