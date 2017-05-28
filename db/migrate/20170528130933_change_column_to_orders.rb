class ChangeColumnToOrders < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :billing_name, :string
    change_column :orders, :billing_address, :string
    change_column :orders, :shipping_name, :string
    change_column :orders, :shipping_address, :string
  end
end
