class ProductsController < ApplicationController
  def index  
    # @products = Product.find(1)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end

  end

  def works
    @products = Product.all
  end

  def about
  end

  def price
  end


  private

  def product_params
    params.require(:product).permit(:title, :description, :period, :price)
  end

end
