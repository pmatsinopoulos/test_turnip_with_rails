steps_for :getting_list_of_products do
  step "I see the products in reverse displayed order" do
    products = Product.order(id: :desc).all
    expect(products.size).to be >= 1

    products_on_page = find_all(:css, "table tr[data-class=product-item]")
    expect(products.size).to eq(products_on_page.size)

    products_on_page.each_with_index do |product_on_page, index|
      within(product_on_page) do
        product_name_element = find(:css, "td[data-class=product-name]")
        expect(product_name_element.text).to eq(products[index].name)
      end
    end
  end
end
