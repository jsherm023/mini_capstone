json.message @products do |product|
 json.partial! "product.json.jbuilder", product: product
end