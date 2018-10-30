class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products

    def products
      the_products = []
      category_products.each do |cp|
        the_products << cp.products
      end
      the_products
    end
end
