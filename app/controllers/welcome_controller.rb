class WelcomeController < ApplicationController
  def index
    @products = Product.all
    flash[:notice] = "Good Morning!"
  end

end
