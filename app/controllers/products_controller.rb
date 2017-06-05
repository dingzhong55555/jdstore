class ProductsController < ApplicationController

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

  def index
    @products = Product.all
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order("created_at DESC")
    end
  end

end
