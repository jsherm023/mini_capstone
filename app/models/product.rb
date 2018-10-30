class Product < ApplicationRecord
  # validates :name, :price, presence: true
  # validates :name, uniquness: true
  has_many :category_products
  has_many :orders
  belongs_to :supplier, optional: true
  has_many :images
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def image
    Image.find_by(id: image_id)
  end 

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

