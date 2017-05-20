class CartItemsController < ApplicationController

def destroy
  @cart = current_cart
  @cart_item = @cart.cart_items.find_by(product_id: params[:id])
  @cart_item.destroy
  @product = @cart_item.product
  flash[:warning] = " 已删除#{@product.title}商品！"
  redirect_to :back
end

end
