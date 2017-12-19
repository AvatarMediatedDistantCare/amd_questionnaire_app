# motionの数
motion_id = (0..23).to_a
applying_user_id = (0...120).to_a
counter_balance = (0..1).to_a.shuffle


motion_id.each do |m_id|
  applying_user_id.each do |u_id|
    order_type = counter_balance.pop
    if(order_type == nil)
      counter_balance = (0..1).to_a.shuffle
      order_type = counter_balance.pop
    end
    MotionOrder.create( motion_id: m_id, order_type: order_type, applying_user_id: u_id )
  end
end
