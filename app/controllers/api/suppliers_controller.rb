class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all

    # if @suppliers = params[:search]
    #   @suppliers = Supplier.where(name LIKE ?, "")
    # end

    render "index.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],

    )

    # happy/sad path
    if @supplier.save
      render "show.json.jb" 
    else
      render json: { errors: @supplier.errors.full_messages }, status: 406
    end
  end

  def show
    input = params[:id]
    @supplier = Supplier.find_by(id: input)
    render "show.json.jb"
  end

  def update
    input = params[:id]
    @supplier = Supplier.find_by(id: input)

    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number


    # happy/sad path
    if @supplier.save
      render "show.json.jb" 
    else
      render json: { errors: @supplier.errors.full_messages }, status: 406
    end
  end

  def destroy
    input = params[:id]
    @supplier = Supplier.find_by(id: input)

    @supplier.destroy
    render json: "Your product has been destroyed."
  end
end
