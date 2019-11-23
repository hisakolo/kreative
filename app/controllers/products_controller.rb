class ProductsController < ApplicationController
  def index  
    @products = Product.find(1)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(title: product_params[:title],
                          description: product_params[:description],
                          period: product_params[:period],
                          price: product_params[:price])
    @product.images.build(url: product_params[:url])
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
    params.require(:product).permit(:title, :description, :period, :price, :url)
  end

end
