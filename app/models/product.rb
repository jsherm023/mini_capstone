class Product < ApplicationRecord
  # validates :name, :price, presence: true
  # validates :name, uniquness: true
  def ls_discounted
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    tax = price * 0.09 
  end

  def total
    total = price + tax
  end
end

