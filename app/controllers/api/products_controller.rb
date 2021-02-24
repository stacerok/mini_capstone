class Api::ProductsController < ApplicationController
  def products_actions
    @products = Product.all
    render "all_products.json.jb"
  end

end
