step "The following list of products:" do |table|
  table.hashes.each do |product|
    create :product, name: product['name']
  end
end
