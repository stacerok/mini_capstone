class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :image_url, presence: true
  #                       # format: { with: %r{.(gif|jpg|png)\Z}i }
  # validates :description, presence: true
  # validates :description, length: { in: 20..500 }
  # validates :inventory, presence: true
  # validates :inventory, numericality: { greater_than_or_equal_to: 1 }
  # validates :price, presence: true
  # validates :price, numericality: { greater_than_or_equal_to: 1 }
  
belongs_to :supplier
has_many :orders

# def supplier
#   Supplier.find_by(id: supplier_id)
# end

def images
  Image.where(product_id: id)
end


  # def is_discounted?
  #   price <= 10
  # end

  # def tax
  #   price * 0.06
  # end 

  # def total
  #   price + tax
  # end

end
