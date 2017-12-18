class CreateMotionOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :motion_orders do |t|
      t.integer :motion_id
      t.integer :order_type
      t.integer :applying_user_type

      t.timestamps
    end
  end
end
