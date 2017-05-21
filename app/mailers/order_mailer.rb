class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order = order
    @user = order.user
    @product_list = @order.product_lists

    mail(to: @user.email, subject: "[jDstore] 感谢您完成本次下单，一下是你的购物明细#{order.token}")
  end
end
