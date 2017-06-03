class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "#{@product.title}成功加入购物车"
    else
      flash[:warning] = "#{@product.title}已存在购物车中"
    end
      redirect_to :back
  end

end
