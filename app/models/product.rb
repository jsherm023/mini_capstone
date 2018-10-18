class Product < ApplicationRecord
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

