class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :total, default: 0
      t.integer :user_id
      t.srting :billing_name
      t.srting :billing_address
      t.srting :shipping_name
      t.srting :shipping_address
      t.timestamps
    end
  end
end
