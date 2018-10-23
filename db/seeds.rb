products = Product.all

products.each do |product|
  product.supplier_id = rand(1..2)
  product.save
end