class WelcomeController < ApplicationController
  def index
    @products = Product.all
    @q = Product.ransack(params[:q])
    flash[:notice] = "Good Morning!"
  end


end
