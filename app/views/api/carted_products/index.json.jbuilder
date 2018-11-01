json.array! @carted_products do |cp|
  json.partial! 'carted_product.json.jbuilder', carted_product: cp
end