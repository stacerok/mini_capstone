class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    # if @products = params[:search]
    #   @products = Product.where(name LIKE ?, "")
    # end

    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )

    # happy/sad path
    if @product.save
      render "show.json.jb" 
    else
      render json: { errors: @product.errors.full_messages }, status: 406
    end
  end

  def show
    input = params[:id]
    @product = Product.find_by(id: input)
    render "show.json.jb"
  end

  def update
    input = params[:id]
    @product = Product.find_by(id: input)

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    # happy/sad path
    if @product.save
      render "show.json.jb" 
    else
      render json: { errors: @product.errors.full_messages }, status: 406
    end
  end

  def destroy
    input = params[:id]
    @product = Product.find_by(id: input)

    @product.destroy
    render json: "Your product has been destroyed."
  end
end



  # def one_product_actions
  #   @products = Product.find_by(id: 1)
  #   render "one_product.json.jb"
  # end

  # def two_product_actions
  #   @products = Product.find_by(id: 2)
  #   render "two_product.json.jb"
  # end

  # def three_product_actions
  #   @products = Product.find_by(id: 3)
  #   render "three_product.json.jb"
  # end

  # ** both query and segment routes use this action **
