class Api::ProductsController < ApplicationController
  def products_actions
    @products = Product.all
    render "all_products.json.jb"
  end

  def one_product_actions
    @products = Product.find_by(id: 1)
    render "one_product.json.jb"
  end

  def two_product_actions
    @products = Product.find_by(id: 2)
    render "two_product.json.jb"
  end

  def three_product_actions
    @products = Product.find_by(id: 3)
    render "three_product.json.jb"
  end

end
